#include "config.h"
#include "utils.h"

#include <libbladeRF.h>
#include "transceive.h"


#include<netinet/in.h>
#include<errno.h>
#include<netdb.h>
#include<netinet/if_ether.h>  //For ETH_P_ALL
#include <netinet/ip.h>
#include<netinet/ip_icmp.h>
#include<netinet/udp.h>   //Provides declarations for udp header
#include<netinet/tcp.h>   //Provides declarations for tcp header
#include<netinet/ip.h> 
#include<netinet/if_ether.h>  //For ETH_P_ALL
#include<net/ethernet.h>  //For ether_header
#include<sys/ioctl.h>
#include<sys/types.h>
#include <math.h>
#include <fcntl.h>

#include <sys/socket.h>
#include <sys/types.h>
#include <linux/if.h>
#include <linux/if_tun.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <linux/if_tun.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <arpa/inet.h>
#include <sys/time.h>
#include <errno.h>
#include <stdarg.h>

#include <sys/types.h>

#include <stdio.h>

//Tuntap library...
#include "tuntap.h"


/* The RX and TX modules are configured independently for these parameters */
    unsigned int samples_len = SAMPLE_SET_SIZE;
    int16_t *tx_samples;
    struct bladerf *devtx;
    int tun_rx_fd;

//For tun0 device
struct device *dev;


/*
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * */






int main(int argc, char *argv[])
{
    int status;
    struct module_config config_rx;
    struct module_config config_tx;
    struct bladerf_devinfo dev_info;
   
   /*
    
    #define  SAMPLE_SET_SIZE 8192 //must be multiple of 2
	#define  BUFFER_SIZE    SAMPLE_SET_SIZE*sizeof(int32_t)
	#define  NUMBER_OF_TRANSFERS 8
	#define  TIMEOUT_IN_MS 1000
	#define  FREQUENCY_USED 713000000
	#define  BANDWIDTH_USED 3000000
	#define  SAMPLING_RATE_USED 600000
	#define  PAYLOAD_LENGTH 1500
    
    */
   
    float complex y[12634];          // frame samples -- calculated for 1500 payload and 8 byte header
    unsigned int  buf_len = PAYLOAD_LENGTH;
    float complex buf[buf_len];
    unsigned int i;
    int frame_complete = 0;
    int lastpos = 0;
    int cnt=0;
    flexframegenprops_s ffp;
    int nread;


    bladerf_init_devinfo(&dev_info);

    if (argc >= 2) {
        strncpy(dev_info.serial, argv[1], sizeof(dev_info.serial) - 1);
    }
    status = bladerf_open_with_devinfo(&devtx, &dev_info);

    if (status != 0) {
        fprintf(stderr, "Unable to open device: %s\n", bladerf_strerror(status));
        return 1;
    }
    fprintf(stdout, "Device Serial: %s\tbladerf_open_with_devinfo: %s\n", dev_info.serial, bladerf_strerror(status));

//    hostedx115-latest.rbf
    bladerf_load_fpga(devtx, "hostedx115-latest.rbf");

    /* Set up RX module parameters */
    config_rx.module     = BLADERF_MODULE_RX;
    config_tx.module     = BLADERF_MODULE_TX;
    config_tx.frequency  = config_rx.frequency  = FREQUENCY_USED;
    config_tx.bandwidth  = config_rx.bandwidth  = BANDWIDTH_USED;
    config_tx.samplerate = config_rx.samplerate = SAMPLING_RATE_USED;
    config_tx.rx_lna     = config_rx.rx_lna     = BLADERF_LNA_GAIN_MID;
    config_tx.vga1       = config_rx.vga1       = 10;
    config_tx.vga2       = config_rx.vga2       = 0;




	//Initialization of "tun0" device
	//It sets a random name but later we will change it to "tun0"
	//It is a tun device so it will transfer the IP packets without containing ethernet header...
	dev = tuntap_init();
	if (tuntap_start(dev, TUNTAP_MODE_TUNNEL, TUNTAP_ID_ANY) == -1) {
		return 1;
	}
	
	//We are correcting the device name, dev-> "tun0"
	tuntap_set_ifname(dev, "tun0");
	
	//Ip allocation for "tun0", 
	if (tuntap_set_ip(dev, "10.0.0.1", 24) == -1) {
		return 1;
	}
	
	//We are setting tun0 device running mode...
	//They can be seen via "ifconfig" command...
	if (tuntap_up(dev) == -1) {
		return 1;
	}
	
	
    //tun_rx_fd = tun_alloc(name, IFF_TUN | IFF_NO_PI); -- old one...
    

   
    

    status = configure_module(devtx, &config_tx);
    if (status != 0) {
        fprintf(stderr, "Failed to configure RX module. Exiting.\n");
        return status;
    }
    fprintf(stdout, "configure_module: %s\n", bladerf_strerror(status));


    /* Initialize synch interface on RX and TX modules */
    status = init_sync_tx(devtx);
    if (status != 0) {
    	fprintf(stderr, "init_sync_tx. Exiting.\n");
    	return status;
    }
    fprintf(stdout, "init_sync_tx: %s\n", bladerf_strerror(status));


    status = calibrate(devtx);
    if (status != 0) {
        fprintf(stderr, "Failed to calibrate RX module. Exiting.\n");
        return status;
    }
    fprintf(stdout, "calibrate: %s\n", bladerf_strerror(status));







    flexframegenprops_init_default(&ffp);
	//ffp.check = false;
    ffp.fec0 = LIQUID_FEC_NONE;
    ffp.fec1 = LIQUID_FEC_NONE;
    ffp.mod_scheme = LIQUID_MODEM_QAM4;
/*
On the transmitter side, the appropriate frame generator object is created, configured, and executed.
* While the specifics of the frame64 and flexframe structures are different, both frames consist of six basic parts:

ramp/up gracefully increases the output signal level to avoid "key clicking" and reduce spectral side-lobes in the transmitted signal..
preamble phasing is a BPSK pattern which flips phase for each transmitted symbol ( +1,-1,+1,-1,... ). 
p/n sequence is an mm -sequence (see [section-sequence] ) exhibiting good auto- and cross-correlation properties. 
header is a fixed-length data sequence which contains a small amount of information about the rest of the frame.
payload is the meat of the frame, containing the raw data to be transferred across the link. 
ramp/down gracefully decreases the output signal level as per ramp/up.
* 
*/

 // options
    unsigned int M           = 64;          // number of subcarriers
    unsigned int cp_len      = 16;          // cyclic prefix length
    unsigned int taper_len   = 4;           // taper length
    unsigned int payload_len = 120;         // length of payload (bytes)


/*
Initialize the header and payload arrays with whatever values you wish. 
* Finally you will need to create a buffer for storing the frame samples. 
* Unlike the framegen64 object in the previous tutorial which generates the entire frame at once, 
* the ofdmflexframegen object generates each symbol independently. For this framing structure 
* you will need to allocate M+cM+c samples of type float complex (for this example M+c=64+16=80M+c=64+16=80 ), viz.

*/

    // allocate memory for header, payload, sample buffer
    unsigned int symbol_len = M + cp_len;   // samples per OFDM symbol
    float complex buffer[symbol_len];       // time-domain buffer
    unsigned char header[8];                // header
    unsigned char payload[payload_len];     // payload

    // create frame generator object with default properties
    ofdmflexframegen fg = ofdmflexframegen_create(M, cp_len, taper_len, NULL, NULL);






//Add this code somewhere after you create the frame generator, but before you assemble the frame.

modulation_scheme ms = LIQUID_MODEM_PSK8;   // payload modulation scheme
fec_scheme fec0  = LIQUID_FEC_NONE;         // inner FEC scheme
fec_scheme fec1  = LIQUID_FEC_HAMMING128;   // outer FEC scheme
crc_scheme check = LIQUID_CRC_32;           // data validity check

//For overriding default values of OFDM generator
ofdmflexframegenprops_s fgprops;
//Get current OFDM generator properties....
ofdmflexframegen_getprops(fg, &fgprops);
fgprops.check           = check;
fgprops.fec0            = fec0;
fgprops.fec1            = fec1;
fgprops.mod_scheme      = ms;
//Set properties of OFDM generator...
ofdmflexframegen_setprops(fg, &fgprops);







  //  flexframegen fg = flexframegen_create(&ffp);
    
    
    
    flexframegen_print(fg);



// INIT HEADER
    for (i=0; i<8; i++)
        header[i] = i;

    while(status == 0 )
    {
    		cnt ++;

			memset(payload, 0x00, PAYLOAD_LENGTH);
			//sprintf((char*)payload,"abcdef (%d)",cnt);
			//memset(&payload[13], 0x00, PAYLOAD_LENGTH-13);
            
            
            
            //nread=read(tun_rx_fd,payload,buf_len); -- old one
            //Read the "tun0" device...	
			nread = tuntap_read(dev, payload, buf_len);
            
            
            
            if (nread<=0)
            {
                perror("Reading from interface");
               	tuntap_destroy(dev);

                
                //close(tun_rx_fd); -- old one
                exit(1);
            }

		for(int a_ = 0; a_ < 10 ; a_++)
		{
			
			
		/*		flexframegen_assemble()
		 * 
		 *     // reset object
		 *     // set decoded payload length
		 *     // copy user-defined header to internal
		 *     // add FLEXFRAME_PROTOCOL
		 *     // add payload length
		 *     // add modulation scheme/depth (pack into single byte)
		 *     // add CRC, forward error-correction schemes
			   //  CRC     : most-significant  3 bits of [n+4]
			   //  fec0    : least-significant 5 bits of [n+4]
			   //  fec1    : least-significant 5 bits of [n+5]
			   * 
			   // encode/modulate header
			   // add pilots
			   // reconfigure payload
			   // encode/modulate payload
			   // set assembled flag


				Assembles header payload and others applies the required modulation, error correction etc. 
				Internally stores this processed data...
				*/



			//flexframegen_assemble(fg, header, payload, PAYLOAD_LENGTH);
			ofdmflexframegen_assemble(fg, header, payload, payload_len);
			ofdmflexframegen_print(fg);

			//flexframegen_print(fg);
			
			/*
			 * // get frame length (number of samples)

			 * 
			 *unsigned int flexframegen_getframelen(flexframegen _q)
{
    if (!_q->frame_assembled) {
        fprintf(stderr,"warning: flexframegen_getframelen(), frame not assembled!\n");
        return 0;
    }
    unsigned int num_frame_symbols =
            64 +                    // preamble p/n sequence length
            _q->header_sym_len +    // header symbols
            _q->payload_sym_len +   // number of modulation symbols
            2*_q->m;                // number of tail symbols

    return num_frame_symbols*_q->k; // k samples/symbol
} 
			 * 
			 * 
			 * */
			
			symbol_len = flexframegen_getframelen(fg);






			frame_complete = 0;
    		lastpos = 0;
    		while (!frame_complete) {
				
				/*
				 * / write samples of assembled frame, two samples at a time, returning
					// '1' when frame is complete, '0' otherwise. Zeros will be written
					// to the buffer if the frame is not assembled
					//  _q          :   frame generator object
					//  _buffer     :   output buffer [size: _buffer_len x 1]
					//  _buffer_len :   output buffer length
				 * 
				 * Writes internally stored data to passed _buffer pointer
				 * Internally keep a counter so in each iteration it iterates over internally stored data and writes specified _buffer_len bytes to
				 * _buffer object....
				 * 
				 * It is used to get internally assembled frame data...
				 * */			
            	//frame_complete = flexframegen_write_samples(fg, buf, buf_len);
            	frame_complete = ofdmflexframegen_write(fg, buf, buf_len);
            	
            	
            	//Each data retrieved data is written to a complex array for bladeRF to send....
            	memcpy(&y[lastpos], buf, buf_len*sizeof(float complex));
            	lastpos = lastpos + buf_len;
        	}
        	
        	
        	
        	printf("number of samples %u %u\n", symbol_len, lastpos);
        	
        	// A convertion is done for data to conform the  for bladeRF..
        	samples_len=symbol_len;
        	tx_samples = convert_comlexfloat_to_sc16q11( y, symbol_len );
        	if (tx_samples == NULL) {
        		fprintf(stdout, "malloc error: %s\n", bladerf_strerror(status));
        		return BLADERF_ERR_MEM;
        	}

        	
        	//Data is send to bladeRF ....        	
        	status =  sync_tx(devtx, tx_samples, samples_len);
			if (status != 0) {
				fprintf(stderr, "Failed to sync_tx(). Exiting. %s\n", bladerf_strerror(status));
				goto out;
			}
		}
			
			fprintf(stdout, "Packet %d transmitted\n", cnt);
			//usleep(10000);
    }


out:
    bladerf_close(devtx);
    ofdmflexframegen_destroy(fg);
    fprintf(stderr, "TX STATUS: %u,  %s\n", status, bladerf_strerror(status));
    
          tuntap_destroy(dev);

    return status;
}
