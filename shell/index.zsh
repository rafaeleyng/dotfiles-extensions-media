#!/bin/bash

########################################
# switchaudio-osx - https://github.com/deweller/switchaudio-osx
########################################
S_INP_RAW="Built-in Microphone"
S_OUT_RAW="Built-in Output"

S_INP_TV="Built-in Microphone"
S_OUT_TV="HDMI"

alias s='SwitchAudioSource'

function switch_audio_source () {
  SOUND_INP=$1
  SOUND_OUT=$2

  s -t input  -s "$SOUND_INP"
  s -t output -s "$SOUND_OUT"
  s -t system -s "$SOUND_OUT"
}

# shellcheck disable=SC2139
alias s1="switch_audio_source \"$S_INP_RAW\" \"$S_OUT_RAW\""  # raw
# shellcheck disable=SC2139
alias s2="switch_audio_source \"$S_INP_TV\" \"$S_OUT_TV\""    # tv

