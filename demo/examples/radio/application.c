
unsigned eth_in = input("eth_in");
unsigned audio_in = input("audio_in");
unsigned rs232_rx = input("rs232_rx");

unsigned eth_out = output("eth_out");
unsigned audio_out = output("audio_out");
unsigned frequency_out = output("frequency_out");
unsigned samples_out = output("samples_out");
unsigned rs232_tx = output("rs232_tx");

#include "ethernet.h"
#include "scan.h"
#include "print.h"

#define AUDIO_RANGE 256

void output_audio(int sample){
    if(sample > 127) sample = 127;
    if(sample < -128) sample = -128;
    fputc(sample+128, audio_out);
}

void main(){

    unsigned frequency_hz = 910e3;
    int min=0, max=0, range=0, attenuation=0, differential=0,
    integral=0, sample=0, centre=0, last_integral=0, last_sample=0;

    stdout = rs232_tx;
    stdin = rs232_rx;

    fputc(16384, samples_out);
    puts("Enter frequency in hz:\n");
    frequency_hz = scan_udecimal();
    puts("calculating frequency:\n");
    fputc((int)(frequency_hz/(1000.0e6/4294967296.0)), frequency_out);
    puts("playing audio:\n");

    while(1){

        //remove DC and low frequencies using a differentiator
        //and leaky integrator.
        
        //differentiator
        last_sample = sample;
        sample = fgetc(audio_in);
        sample >>= 10;
        differential = sample - last_sample;

        //leaky integrator
        last_integral = integral;
        //integral = ((last_integral*2) >> 10) + differential;
        integral = last_integral + differential;

        //automatic gain control
        if(integral > max) max = integral;
        if(integral < min) min = integral;
        centre = (max+min)>>1;
        range = (max-min);
        attenuation = 0;
        while((range>>attenuation) > AUDIO_RANGE){
            attenuation++;
        }
        output_audio((integral-centre)>>attenuation);
        //if(range > 2){
            //max -= 1;
            //min += 1;
        //}

        //print_decimal(min);
        //puts(" ");
        //print_decimal(max);
        //puts(" ");
        //print_decimal(centre);
        //puts(" ");
        //print_decimal(attenuation);
        //puts("\n");
    }


}