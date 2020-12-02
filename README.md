# mpc-file-converter
Very simple bash script to batch convert all .wav files to mpc 1000 applicable 16bit .wav files in a folder

## Requirements
* [ffmpeg](https://ffmpeg.org/) installed

## Usage
It is recommended to move `mpc-convert.sh` to your `/usr/local/bin` directory for easy access
The script needs to be run in the directory containing the samples, where it will create a directory named `16bit` where all the 16bit.wav files will be stored.
Step by step:
* open Terminal
* navigate to your sample directory e.g.: `cd Samples/drums/snares`
* run `mpc-convert.sh`
* all converted files are now located in the `16bit` directory in `~/Samples/drums/snares`
