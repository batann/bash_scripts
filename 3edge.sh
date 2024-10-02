#!/bin/bash

# Define the text cleaning function in Python
clean_text() {
    python3 - <<END
import re

def clean_text(text):
    # Remove characters not in the whitelist
    text = re.sub(r'[^a-zA-Z0-9,.\[\]() ]', '', text)
    # Remove characters within brackets
    text = re.sub(r'\([^)]*\)', '', text)
    text = re.sub(r'\[[^]]*\]', '', text)
    # Remove non-English characters
    text = re.sub(r'[^\x00-\x7F]+', '', text)
    return text

print(clean_text("$1"))
END
}

# Capture user input using yad
yad_output=$(yad --borders=20 --image-on-top --image="/home/batan/100/icons/tts1.png" --buttons-layout="spread" --form --title="Text-to-Speech Options" \
  --field="Voice":CB "en-US-AnaNeural! en-US-AndrewMultilingualNeural! en-US-AndrewNeural! en-US-AriaNeural! en-US-AvaMultilingualNeural! en-US-AvaNeural! en-US-BrianMultilingualNeural! en-US-BrianNeural! en-US-ChristopherNeural! en-US-EmmaMultilingualNeural! en-US-EmmaNeural! en-US-EricNeural! en-US-GuyNeural! en-US-JennyNeural! en-US-MichelleNeural! en-US-RogerNeural! en-US-SteffanNeural" \
  --field="Text:":text " " \
  --field="Media":CD "output" \
  --button="Cancel:1" --button="Speak!:0" \
  --width=500 --height=300)

# Extract fields from yad output
text=$(echo "$yad_output" | awk -F '|' '{print $2}')
voice=$(echo "$yad_output" | awk -F '|' '{print $1}')
media=$(echo "$yad_output" | awk -F '|' '{print $3}')

# Clean the text using the Python function
cleaned_text=$(clean_text "$text")

# Run the text-to-speech application
VAR=$(/home/batan/.local/bin/edge-tts -v "$voice" -t "$cleaned_text" --write-media="$media.wav")
$VAR
/usr/bin/mpv "$media.wav"
rm "$media.wav"

