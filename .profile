#              _   _
#  _ __   __ _| |_| |__
# | '_ \ / _` | __| '_ \
# | |_) | (_| | |_| | | |
# | .__/ \__,_|\__|_| |_|
# |_|
#
# add Go’s global and local binaries to PATH
PATH="$PATH:/usr/local/go/bin:/home/<username>/.local/share/go/bin"

#      _       __             _ _
#   __| | ___ / _| __ _ _   _| | |_ ___
#  / _` |/ _ \ |_ / _` | | | | | __/ __|
# | (_| |  __/  _| (_| | |_| | | |_\__ \
#  \__,_|\___|_|  \__,_|\__,_|_|\__|___/
#
EDITOR=vim
READER=zathura
TERMINAL=st

#          _
# __  ____| | __ _
# \ \/ / _` |/ _` |
#  >  < (_| | (_| |
# /_/\_\__,_|\__, |
#            |___/
XDG_CACHE_HOME=/home/<username>/.cache
XDG_CONFIG_HOME=/home/<username>/.config
XDG_DATA_HOME=/home/<username>/.local/share

#             __ _
#  ___  ___  / _| |___      ____ _ _ __ ___
# / __|/ _ \| |_| __\ \ /\ / / _` | '__/ _ \
# \__ \ (_) |  _| |_ \ V  V / (_| | | |  __/
# |___/\___/|_|  \__| \_/\_/ \__,_|_|  \___|
#
ASPELL_CONF="per-conf $XDG_CONFIG_HOME/aspell/aspell.conf; personal $XDG_CONFIG_HOME/aspell/en.pws; repl $XDG_CONFIG_HOME/aspell/en.prepl"
CGO_ENABLED=0
GEM_HOME=$XDG_DATA_HOME/gem
GEM_SPEC_CACHE=$XDG_CACHE_HOME/gem
GOBIN=$XDG_DATA_HOME/go/bin
GOPATH=$XDG_DATA_HOME/go
GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0
HISTFILE=$XDG_DATA_HOME/history
LESSHISTFILE=-
PLTUSERHOME=$XDG_DATA_HOME/racket
TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config
TEXMFHOME=$XDG_CONFIG_HOME/texmf
TEXMFVAR=$XDG_CONFIG_HOME/texlive/texmf-var
WEECHAT_HOME=$XDG_CONFIG_HOME/weechat
WGETRC=$XDG_CONFIG_HOME/wget/wgetrc
WINEPREFIX=$XDG_DATA_HOME/wineprefixes/default
XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority

#            _
#  _ __ ___ (_)___  ___
# | '_ ` _ \| / __|/ __|
# | | | | | | \__ \ (__
# |_| |_| |_|_|___/\___|
#
BUNDLE_USER_CACHE=$XDG_CACHE_HOME/bundle
BUNDLE_USER_CONFIG=$XDG_CONFIG_HOME/bundle
BUNDLE_USER_PLUGIN=$XDG_DATA_HOME/bundle
CARGO_HOME=$XDG_DATA_HOME/cargo
COMMON_FLAGS="-march=ivybridge -mtune=ivybridge -O2 -pipe"
CFLAGS="$COMMON_FLAGS"
CXXFLAGS="$COMMON_FLAGS"
DISPLAY=:0
FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
GPG_TTY=$(tty)
_JAVA_AWT_WM_NONREPARENTING=1
LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
LESS=-R
LESS_TERMCAP_mb=$(tput bold; tput setaf 0)
LESS_TERMCAP_md=$(tput bold; tput setaf 4)
LESS_TERMCAP_me=$(tput sgr0)
LESS_TERMCAP_mh=$(tput dim)
LESS_TERMCAP_mr=$(tput rev)
LESS_TERMCAP_se=$(tput rmso; tput sgr0)
LESS_TERMCAP_so=$(tput bold; tput setaf 7; tput setab 5)
LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7)
MOZ_USE_XINPUT2=1
QT_QPA_PLATFORMTHEME=adwaita-dark
QT_STYLE_OVERRIDE=adwaita-dark

#                             _
#   _____  ___ __   ___  _ __| |_ ___
#  / _ \ \/ / '_ \ / _ \| '__| __/ __|
# |  __/>  <| |_) | (_) | |  | |_\__ \
#  \___/_/\_\ .__/ \___/|_|   \__|___/
#           |_|
# PATH
export PATH
# defaults
export EDITOR
export READER
export TERMINAL
# XDG
export XDG_CACHE_HOME
export XDG_CONFIG_HOME
export XDG_DATA_HOME
# software
export ASPELL_CONF
export CGO_ENABLED
export GEM_HOME
export GEM_SPEC_CACHE
export GOBIN
export GOPATH
export GTK2_RC_FILES
export HISTFILE
export LESSHISTFILE
export PLTUSERHOME
export TEXMFCONFIG
export TEXMFHOME
export TEXMFVAR
export WEECHAT_HOME
export WGETRC
export WINEPREFIX
export XAUTHORITY
# misc
export BUNDLE_USER_CACHE
export BUNDLE_USER_CONFIG
export BUNDLE_USER_PLUGIN
export CARGO_HOME
export COMMON_FLAGS
export CFLAGS
export CXXFLAGS
export DISPLAY
export FZF_DEFAULT_OPTS
export GPG_TTY
export _JAVA_AWT_WM_NONREPARENTING
export LESSOPEN
export LESS
export LESS_TERMCAP_mb
export LESS_TERMCAP_md
export LESS_TERMCAP_me
export LESS_TERMCAP_mh
export LESS_TERMCAP_mr
export LESS_TERMCAP_se
export LESS_TERMCAP_so
export LESS_TERMCAP_ue
export LESS_TERMCAP_us
export MOZ_USE_XINPUT2
export QT_QPA_PLATFORMTHEME
export QT_STYLE_OVERRIDE

#   _____  _____  ___ ___
#  / _ \ \/ / _ \/ __/ __|
# |  __/>  <  __/ (__\__ \
#  \___/_/\_\___|\___|___/
#
# source .bashrc if exists
test -f /home/<username>/.bashrc && . /home/<username>/.bashrc
# start Xorg if dwm is not already running
if test "$(tty)" = /dev/tty1; then
  pidof Xorg >/dev/null 2>&1 || exec startx
fi
