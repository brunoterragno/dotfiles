rvm default

set -e fish_greeting

set -g -x GOPATH $HOME/go
set -g -x ANDROID $HOME/Library/Android
set -g -x ANDROID_HOME ~/Library/Android/sdk
set -g -x ANDROID_SDK $ANDROID_HOME/lib
set -g -x ANDROID_TOOLS $ANDROID_HOME/tools
set -g -x ANDROID_TOOLS $ANDROID_HOME/platform-tools

set -g -x PATH /usr/local/bin /usr/local/go/bin $GOPATH $ANDROID_HOME $ANDROID_TOOLS $ANDROID_P_TOOLS $PATH

. "$HOME/.config/fish/functions/custom/export.fish"
. "$HOME/.config/fish/functions/custom/aliases.fish"
. "$HOME/.config/fish/functions/custom/functions.fish"
