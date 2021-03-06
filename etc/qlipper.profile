# Firejail profile for qlipper
# Description: Lightweight and cross-platform clipboard history applet
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/qlipper.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.config/Qlipper

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-interpreters.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-xdg.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none

disable-mnt
private-cache
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
