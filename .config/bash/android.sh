#!/usr/bin/env bash
if [ -d "$HOME/Android/android-studio/bin" ] ; then
    export PATH="$HOME/Android/android-studio/bin:$PATH"
fi

if [ -d "$HOME/Android/Sdk" ] ; then
    export PATH="$HOME/Android/Sdk/emulator/:$HOME/Android/Sdk/platform-tools:$PATH"
    export ANDROID_HOME="$HOME/Android/Sdk"
fi

if [ -d "$HOME/Android/genymotion" ] ; then
    export PATH="$HOME/Android/genymotion:$PATH"
fi
