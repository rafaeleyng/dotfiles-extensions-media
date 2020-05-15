#!/bin/bash

########################################
# switchaudio-osx - https://github.com/deweller/switchaudio-osx
########################################
S_INP_RAW="MacBook Pro Microphone"
S_OUT_RAW="MacBook Pro Speakers"

S_INP_SIMPLE="External Microphone"
S_OUT_SIMPLE="External Headphones"

alias s='SwitchAudioSource'

function switch_audio_source () {
  SOUND_INP=$1
  SOUND_OUT=$2

  s -t input  -s "$SOUND_INP"
  s -t output -s "$SOUND_OUT"
  s -t system -s "$SOUND_OUT"
}

# shellcheck disable=SC2139
alias s1="switch_audio_source \"$S_INP_RAW\" \"$S_OUT_RAW\""              # raw
# shellcheck disable=SC2139
alias s2="switch_audio_source \"$S_INP_SIMPLE\" \"$S_OUT_SIMPLE\""        # simple
