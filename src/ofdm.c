#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <complex.h>
#include <liquid/liquid.h>

/*
 * 
 * 
 * The framing tutorial ( [section-tutorial-framing] ) loaded data serially onto a single carrier. 
 * Another option is to load data onto many carriers in parallel; however it is desirable to do so such that bandwidth isn't wasted. 
 * By allowing the "subcarriers" to overlap in frequency, the system approaches the theoretical maximum capacity of the channel.
 * 
 * 
 * Several multiplexing schemes are possible, but by far the most common is generically known as orthogonal 
 * frequency divisional multiplexing (OFDM) which uses a square temporal pulse shaping filter for each subcarrier, 
 * separated in frequency by the inverse of the symbol rate. This conveniently allows data to be loaded into the input of an 
 * inverse discrete Fourier transform (DFT) at the transmitter and (once time and carrier synchronized) de-multiplexed with a 
 * regular DFT at the receiver. For computational efficiency the DFT may be implemented with a fast Fourier transform (FFT) which is 
 * mathematically equivalent but considerably faster. Furthermore, because of the cyclic nature of the DFT a certain portion 
 * (usually on the order of 10%) of the tail of the generated symbol may be copied to its head before transmitting; this is known as 
 * the cyclic prefix which can eliminate inter-symbol interference in the presence of multi-path channel environments. Carrier 
 * frequency and symbol timing offsets can be tracked and corrected by inserting known pilot subcarriers in the signal at the transmitter; 
 * because the receiver knows the pilot symbols it can make an accurate estimate of the channel conditions for each OFDM symbol. 
 * As an example, the well-known Wi-Fi 802.11a standard uses OFDM with 64 subcarriers (52 for data, 4 pilots, and 8 disabled for guard bands) 
 * and a 16-sample cyclic prefix.
 * 
 * 
 * 
 * 
 * 
 * 
 * The ofdmflexframe generator and synchronizer objects together realize a simple framing structure for loading data onto a reconfigurable 
 * OFDM physical layer. The generator encapsulates an 8-byte user-defined header and a variable-length buffer of uncoded payload data and 
 * fully encodes a frame of OFDM symbols ready for transmission. The user may define many physical-layer parameters of the transmission, 
 * including the number of subcarriers and their allocation (null/pilot/data), cyclic prefix length, forward error-correction coding, 
 * modulation scheme, and others. The synchronizer requires the same number of subcarriers, cyclic prefix, and subcarrier allocation as 
 * the transmitter, but can automatically determine the payload length, modulation scheme, and forward error-correction of the receiver. 
 * Furthermore, the receiver can compensate for carrier phase/frequency and timing offsets as well as multi-path fading and noisy channels. 
 * The received data are returned via a callback function which includes the modulation and error-correction schemes used as well as certain 
 * receiver statistics such as the received signal strength ( [section-agc] ), and error vector magnitude
 * 
 * 
 * 
 * 
 * The ofdmflexframegen object can be generated with the ofdmflexframegen_create(M,c,t,p,props) method which accepts five arguments:

MM is an unsigned int representing the total number of subcarriers
cc is an unsigned int representing the length of the cyclic prefix
tt is an unsigned int representing the length of the overlapping tapered window between OFDM symbols ( 0 ≤≤ t ≤≤ c ).
p⃗ p→ is an MM -element array of unsigned char which gives the subcarrier allocation (e.g. which subcarriers are nulled/disabled, 
* which are pilots, and which carry data). Setting to NULL tells the ofdmflexframegen object to use the default subcarrier allocation 
* (see [section-framing-ofdmflexframe-subcarrier-allocation] for details);
* 
props is a special structure called ofdmflexframegenprops_s which gives some basic properties including the inner/outer forward 
* error-correction scheme(s) to use ( fec0 , fec1 ), and the modulation scheme ( mod_scheme ) and depth ( mod_depth ). 
* The properties object can be initialized to its default by using ofdmflexframegenprops_init_default() .
 * 
 * */








// callback function
int mycallback(unsigned char *  _header,
               int              _header_valid,
               unsigned char *  _payload,
               unsigned int     _payload_len,
               int              _payload_valid,
               framesyncstats_s _stats,
               void *           _userdata)
{
    printf("***** callback invoked!\n");
    printf("  header (%s)\n",  _header_valid  ? "valid" : "INVALID");
    printf("  payload (%s)\n", _payload_valid ? "valid" : "INVALID");
    printf("Data received : %s\n\n", _payload);
    return 0;
}




int main() {
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







    unsigned int i;

    // initialize header/payload and assemble frame
    for (i=0; i<8; i++)           header[i]  = i      & 0xff;
    for (i=0; i<payload_len; i++) payload[i] = rand() & 0xff;
    
    char * try = "This is a try";
    for(int a=0; a < strlen(try) ; a++) payload[a] = try[a];
    payload[strlen(try)] = '\0';
    
    
    
    /*
     * Generating the frame consists of two steps: assemble and write. 
     * Assembling the frame simply involves invoking the ofdmflexframegen_assemble(fg,header,payload,payload_len) 
     * method which accepts the frame generator object as well as the header and payload arrays we initialized earlier. 
     * Internally, the object encodes and modulates the frame, but does not write the OFDM symbols yet
     * 
     * */
    
    
    /*
     * // assemble a frame from an array of data (NULL pointers will use random data)

     * // check payload length and reconfigure if necessary
     * // set assembled flag
	   // copy user-defined header data
    // encode full header
    // modulate header
    // pack modem symbols

		Internally stores the processed data...
		* That's it! This completely assembles the frame complete with error-correction coding, 
		* pilot subcarriers, and the preamble necessary for synchronization.
     * */
    
    ofdmflexframegen_assemble(fg, header, payload, payload_len);
    
    
    /*
     * 
     * 
     * Notice that the ofdmflexframegen_print() method gives a lot of information, 
     * including the number of null, pilot, and data subcarriers, 
     * the number of modulated symbols, the number of OFDM symbols, 
     * and the resulting spectral efficiency. Furthermore, notice that the 
     * first three symbols have only 64 samples while the remaining have 80; 
     * these first three symbols are actually part of the preamble to help the 
     * synchronizer detect the presence of a frame and estimate symbol timing and 
     * carrier frequency offsets.
     * 
     * */
    
    ofdmflexframegen_print(fg);
    
    
    
    

/*
 * The OFDM frame synchronizer's purpose is to detect the presence of a frame, 
 * correct for channel impairments (such as a carrier frequency offset), 
 * decode the data (correct for errors in the presence of noise), and pass the 
 * resulting data back to the user. In our program we will pass to the frame synchronizer 
 * samples in the buffer created by the generator, without adding noise, carrier frequency offsets, 
 * or other channel impairments. The ofdmflexframesync object can be generated with the 
 * ofdmflexframesync_create(M,c,t,p,callback,userdata) method which accepts six arguments:

MM is an unsigned int representing the total number of subcarriers
cc is an unsigned int representing the length of the cyclic prefix
tt is an unsigned int representing the length of the overlapping tapered window between OFDM symbols ( 0 ≤≤ t ≤≤ c ).
p⃗ p→ is an MM -element array of unsigned char which gives the subcarrier allocation (see [section-tutorial-ofdmflexframe-framegen] )
callback is a pointer to your callback function which will be invoked each time a frame is found and decoded.
userdata is a void pointer that is passed to the callback function each time it is invoked. This allows you to easily pass data from the callback function. Set to NULL if you don't wish to use this.
 * 
 * Notice that the first three arguments are the same as in the 
 * ofdmflexframegen_create() method; the values of these 
 * parameters at the synchronizer need to match those at 
 * the transmitter in order for the synchronizer to operate properly. 
 * When the synchronizer does find a frame, it attempts to decode the header and payload and invoke 
 * a user-defined callback function.
 * 
 * 
 * 
 * */


    // create frame synchronizer object, its parameters should be same as generator's.
    ofdmflexframesync fs =
        ofdmflexframesync_create(M, cp_len, taper_len, NULL, mycallback, NULL);
    
    
    
    
    /*
     * 
     * void ofdmflexframesync_print(ofdmflexframesync _q)
{
    printf("ofdmflexframesync:\n");
    printf("    num subcarriers     :   %-u\n", _q->M);
    printf("      * NULL            :   %-u\n", _q->M_null);
    printf("      * pilot           :   %-u\n", _q->M_pilot);
    printf("      * data            :   %-u\n", _q->M_data);
    printf("    cyclic prefix len   :   %-u\n", _q->cp_len);
    printf("    taper len           :   %-u\n", _q->taper_len);
}
     * 
     * */
    
   ofdmflexframesync_print(fs);

    
    
    
    
    
    
    

    // generate frame one OFDM symbol at a time
    int last_symbol=0;
    while (!last_symbol) {
		
		/*
		To write the OFDM time-series symbols, invoke the ofdmflexframegen_writesymbol() method. 
		* This method accepts three arguments: the frame generator object, the output buffer we created earlier, 
		* and the pointer to an integer to indicate the number of samples that have been written to the buffer. 
		* The last argument is necessary because not all of the symbols in the frame are the same size 
		* (the first several symbols in the preamble do not have a cyclic prefix). Invoking the ofdmflexframegen_writesymbol() 
		* method repeatedly generates each symbol of the frame and returns a flag indicating if the last symbol in the frame has been written.
		*/
        // generate symbol (write samples to buffer)
        last_symbol = ofdmflexframegen_write(fg, buffer, symbol_len);

        // print status
        printf("ofdmflexframegen wrote %3u samples %s\n",
            symbol_len,
            last_symbol ? "(last symbol)" : "");
            
        //The buffer read from generator object is written to sync object, when full frame is retrieved callback function is called....
        ofdmflexframesync_execute(fs, buffer, symbol_len);

            
    }






    // destroy objects and return
	ofdmflexframegen_destroy(fg);
    ofdmflexframesync_destroy(fs);    
    printf("done.\n");
    return 0;
}



/*
 What happens to the spectral efficiency of the frame when you increase the payload from 120 bytes to 400?

.. footnote
*A:* the spectral efficiency increases from 0.5455
to 0.8511 because the preamble accounts for less of
frame (less overhead)
when you decrease the cyclic prefix from 16 samples to 4?

.. footnote
  *A:* the spectral efficiency increases from 0.5455
  to 0.6417 because fewer samples are used for each OFDM
  symbol (less overhead)
when you increase the number of subcarriers from 64 to 256?

.. footnote
  *A:* the spectral efficiency decreases from 0.5455
  to 0.4412 because the preamble accounts for *more* of
  the frame (increased overhead).
What happens when the frame generator is created with 64 subcarriers and the synchronizer is created with only 62?

.. footnote
  *A:* the synchronizer cannot detect frame
  because the subcarriers don't match (different pilot
  locations, etc.
when the cyclic prefix lengths don't match?

.. footnote
  *A:* the synchronizer cannot decode header because of
  symbol timing  mis-alignment.
What happens when you decrease the SNR from 20 dB to 10 dB?

.. footnote
  *A:* the payload will probably be invalid because of
  too many errors.
when you decrease the SNR to 0 dB?

.. footnote
  *A:* the frame header will probably be invalid
  because of too many errors.
when you decrease the SNR to -10 dB?

.. footnote
  *A:* the frame synchronizer will probably miss the
  frame entirely because of too much noise.
What happens when you increase the carrier frequency offset from 0.001 to 0.1?

.. footnote
  *A:* the frame isn't detected because the carrier
  offset is too large for the synchronizer to correct.
  Try decreasing the number of subcarriers from 64 to 32
  and see what happens.
 
 */















