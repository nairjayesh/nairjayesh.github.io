#! /bin/bash 

# check ffmpeg  rnn-models 
if command -v ffmpeg -&> /dev/null; then 
    echo "ffmpeg is installed." 
else 
    echo "ffmpeg is not installed" 
    sudp apt install ffmpeg -y
fi 

# collect models in seperate folder 
git clone https://github.com/GregorR/rnnoise-models.git 
mkdir models
find ./rnnoise-models/ -name "*.rnnn" -exec cp -t ./models {} +  
rm -rf ./rnnoise-models

# get input file format -mkv / mp4 / mp3 ? 
read -e -p "File Path " filepath
echo "$filepath"

# convert input file to wav 
read -p "Is it video: (y/n) " answer
if [[ "${answer,,}" == "y" ]]; then
    ffmpeg -i "$filepath" -vn -acodec pcm_s16le original_temp.wav
else 
    ffmpeg -i "$filepath" -acodec pcm_s16le original_temp.wav
fi

# apply noise suppression to wav file 
ffmpeg -i original_temp.wav -af "arnndn=m=$PWD/models/sh.rnnn" -c:a pcm_s16le final_temp.wav
ffmpeg -i final_temp.wav clean_audio.mp3

# clean up directory
rm *.wav
echo "Clean audio file saved as mp3"