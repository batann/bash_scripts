#!/bin/bash
    yad_output=$(yad --borders=20 --image-on-top --image="/home/batan/100/icons/tts1.png" --buttons-layout="spread" --form --title="Text-to-Speech Options" \
      --field="Voice":CB "en-US-AnaNeural! en-US-AndrewMultilingualNeural! en-US-AndrewNeural! en-US-AriaNeural! en-US-AvaMultilingualNeural! en-US-AvaNeural! en-US-BrianMultilingualNeural! en-US-BrianNeural! en-US-ChristopherNeural! en-US-EmmaMultilingualNeural! en-US-EmmaNeural! en-US-EricNeural! en-US-GuyNeural! en-US-JennyNeural! en-US-MichelleNeural! en-US-RogerNeural! en-US-SteffanNeural" \
	  --field="Text:":text " " \
        --field="Media":CD "output" \
        --button="Cancel:1" --button="Speak!:0" \
        --width=500 --height=300)

text=$(echo "$yad_output" | awk -F '|' '{print $2}')
voice=$(echo "$yad_output" | awk -F '|' '{print $1}')
media=$(echo "$yad_output" | awk -F '|' '{print $3}')





VAR=$(/home/batan/.local/bin/edge-tts -v $voice -t $(echo $text|sed 's/^/\"/g'|sed 's/$/\"/g') --write-media=$media.wav)

$VAR
/usr/bin/mpv $media.wav
rm $media.wav



