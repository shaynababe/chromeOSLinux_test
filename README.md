
## With this release test4 is namespace for chromeOSLinux for task and builds in  /usr/local/bin for your local machine you need to have read write to run make all
## It will download the debootstrap files to local /usr/local/bin not /tmp
## The file for install is test4 and is written to ~/Downloads/test4
## This is not compatible with crouton shell scripts and the new files need to be copied to you /usr/local/bin is using this ie chroots/bin/ cp * /usr/local/bin
## After make all use the ctrl+alt+shift+<- keys to get back to a crosh shell, start and new shell and shell into it. the command of sudo cp ~/Downloads/test4 /usr/local/bin then sudo chmod 755 /usr/local/bin/test4
## then the sudo test4 --help will show the cmds to get chroot installed
## IE sudo test4 -p /home/SD/z/ -r bullseye -t xorg,xiwi,xfce will work 

## if you with to view the activity start and  new shell and cd /usr/local/bin
## you can ls -la to watch the intall process 

![Screenshot_2022-12-19_13-48-13](https://user-images.githubusercontent.com/120763310/208530702-a211e371-ba0f-4329-b5d7-433041ba63ad.png)

```bash

chronos@localhost /home/SD/3 $ ls /usr/local/bin
crash_reporter_wrapper    enter-chroot  mount-chroot  startkde    startxbmc   testar1
delete-chroot             host-bin      startcli      startkodi   startxfce4  unmount-chroot
drinkcat-chroagh-18cc180  hostbin.ar    starte17      startlxde   startxiwi   unmount-chroot.old
edit-chroot               mnt.sh        startgnome    startunity  test4
chronos@localhost /home/SD/3 $ ls
bin  chroots
chronos@localhost /home/SD/3 $ cd chroots
chronos@localhost /home/SD/3/chroots $ ls
bull3
chronos@localhost /home/SD/3/chroots $ 

drwxr-xr-x.  2 z z  4096 Dec 19 12:03 .
drwxr-xr-x. 13 z z  4096 Dec 19 12:15 ..
-rwxr-xr-x.  1 z z  7360 Nov 25 01:46 crash_reporter_wrapper
lrwxrwxrwx.  1 z z    11 Dec 19 12:03 delete-chroot -> edit-chroot
-rwxr-xr-x.  1 z z 24256 Nov 25 01:46 edit-chroot
-rwxr-xr-x.  1 z z 27254 Nov 25 01:46 enter-chroot
-rwxr-xr-x.  1 z z 13503 Nov 25 01:46 mount-chroot
-rwxr-xr-x.  1 z z   735 Nov 25 01:46 startcli
-rwxr-xr-x.  1 z z   569 Nov 25 01:46 starte17
-rwxr-xr-x.  1 z z   548 Nov 25 01:46 startgnome
-rwxr-xr-x.  1 z z   557 Nov 25 01:46 startkde
-rwxr-xr-x.  1 z z   592 Nov 25 01:46 startkodi
-rwxr-xr-x.  1 z z   561 Nov 25 01:46 startlxde
-rwxr-xr-x.  1 z z   548 Nov 25 01:46 startunity
-rwxr-xr-x.  1 z z   547 Nov 25 01:46 startxfce4
-rwxr-xr-x.  1 z z  2140 Nov 25 01:46 startxiwi
-rwxr-xr-x.  1 z z 10790 Nov 25 01:46 unmount-chroot

(bull3)z@localhost:~/crouton_Penguin/chromeOSLinux_test$ git push --all
Username for 'https://github.com': shaynababe
Password for 'https://shaynababe@github.com': 
remote: Support for password authentication was removed on August 13, 2021.
remote: Please see https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls for information on currently recommended modes of authentication.
fatal: Authentication failed for 'https://github.com/shynababe/chromeOSLinux_test.git/'
(bull3)z@localhost:~/crouton_Penguin/chromeOSLinux_test$ git push --all
Username for 'https://github.com': shaynababe
Password for 'https://shaynababe@github.com': 
Enumerating objects: 224, done.
Counting objects: 100% (224/224), done.
Delta compression using up to 4 threads
Compressing objects: 100% (197/197), done.
Writing objects: 100% (223/223), 343.60 KiB | 3.66 MiB/s, done.
Total 223 (delta 33), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (33/33), done.
To https://github.com/shynababe/chromeOSLinux_test.git
   f08039a..56a040a  main -> main
(bull3)z@localhost:~/crouton_Penguin/chromeOSLinux_test$ ls   
AUTHORS    Screenshot_2022-12-17_08-02-55.png  chroot-etc   host-ext   src
Makefile   build                               debootstrap  installer  targets
README.md  chroot-bin                          host-bin     kernel
(bull3)z@localhost:~/crouton_Penguin/chromeOSLinux_test$ make all
rm -rf chromeOSLinux.build && mkdir -p chromeOSLinux.build \
&& cp -at chromeOSLinux.build --parents chroot-bin/brightness chroot-bin/chromeOSLinux-noroot chroot-bin/chromeOSLinux-unity-autostart chroot-bin/chromeOSLinuxclip chroot-bin/chromeOSLinuxcycle chroot-bin/chromeOSLinuxfindnacl chroot-bin/chromeOSLinuxlhandler chroot-bin/chromeOSLinuxnotify chroot-bin/chromeOSLinuxpowerd chroot-bin/chromeOSLinuxtriggerd chroot-bin/chromeOSLinuxversion chroot-bin/chromeOSLinuxxinitrc-wrapper chroot-bin/crouton-noroot chroot-bin/crouton-unity-autostart chroot-bin/croutonclip chroot-bin/croutoncycle chroot-bin/croutonfindnacl chroot-bin/croutonnotify chroot-bin/croutonpowerd chroot-bin/croutontriggerd chroot-bin/croutonurlhandler chroot-bin/croutonversion chroot-bin/croutonxinitrc-wrapper chroot-bin/gnome-session-wrapper chroot-bin/host-dbus chroot-bin/host-wayland chroot-bin/setres chroot-bin/startgnome chroot-bin/startkde chroot-bin/startlxde chroot-bin/startunity chroot-bin/startxfce4 chroot-bin/volume chroot-bin/xinit chroot-bin/xiwi chroot-bin/z chroot-etc/chroot-etc-pam-d chroot-etc/kodi-cycle.py chroot-etc/kodi-keyboard.xml chroot-etc/pulseaudio-default.pa chroot-etc/unity-autostart.desktop chroot-etc/unity-profiled chroot-etc/xbindkeysrc.scm chroot-etc/xiwi.conf chroot-etc/xorg-dummy.conf chroot-etc/xorg-intel-sna.conf chroot-etc/xserverrc chroot-etc/xserverrc-local.example chroot-etc/xserverrc-xiwi chroot-etc/xserverrc-xorg \
&& cp -Lprt chromeOSLinux.build --parents host-bin/crash_reporter_wrapper host-bin/delete-chroot host-bin/edit-chroot host-bin/enter-chroot host-bin/mount-chroot host-bin/startcli host-bin/starte17 host-bin/startgnome host-bin/startkde host-bin/startkodi host-bin/startlxde host-bin/startunity host-bin/startxfce4 host-bin/startxiwi host-bin/unmount-chroot installer/main.sh installer/prepare.sh installer/functions installer/arch/ar installer/arch/bootstrap installer/arch/defaults installer/arch/getrelease.sh installer/arch/new installer/arch/pkgdetails installer/arch/prepare installer/arch/releases installer/debian/ar installer/debian/bootstrap installer/debian/defaults installer/debian/getrelease.sh installer/debian/pkgdetails installer/debian/prepare installer/debian/releases installer/gentoo/ar installer/gentoo/bootstrap installer/gentoo/defaults installer/gentoo/getrelease.sh installer/gentoo/pkgdetails installer/gentoo/prepare installer/gentoo/releases installer/kali/ar installer/kali/bootstrap installer/kali/defaults installer/kali/getrelease.sh installer/kali/pkgdetails installer/kali/prepare installer/kali/releases installer/opensuse/ar installer/opensuse/bootstrap installer/opensuse/defaults installer/opensuse/getrelease.sh installer/opensuse/pkgdetails installer/opensuse/prepare installer/opensuse/releases installer/ubuntu/ar installer/ubuntu/bootstrap installer/ubuntu/defaults installer/ubuntu/getrelease.sh installer/ubuntu/pkgdetails installer/ubuntu/prepare installer/ubuntu/releases src/fbserver-proto.h src/fbserver.c src/findnacld.c src/freon.c src/vtmonitor.c src/websocket.c src/websocket.h src/xi2event.c targets/audio targets/chrome targets/chrome-beta targets/chrome-common targets/chrome-dev targets/chromium targets/cli-extra targets/common targets/core targets/e17 targets/extension targets/gnome targets/gnome-desktop targets/gtk-extra targets/kde targets/kde-desktop targets/keyboard targets/kodi targets/lxde targets/lxde-desktop targets/mate targets/mate-desktop targets/openoffice targets/post-common targets/tools targets/touch targets/unity targets/unity-desktop targets/x11 targets/x11-common targets/xbmc targets/xfce targets/xfce-desktop targets/xiwi targets/xorg \
&& for bootstrap in installer/arch/bootstrap installer/debian/bootstrap installer/gentoo/bootstrap installer/kali/bootstrap installer/opensuse/bootstrap installer/ubuntu/bootstrap; do \
	tmp=chromeOSLinux.build; \
	[ -h "$bootstrap" ] && continue; \
	echo "Preparing bootstrap dependencies for $bootstrap" >&2; \
	tmp=chromeOSLinux.build sh -e "$bootstrap" \
		|| ! rm -rf chromeOSLinux.build || exit 1; \
done
Preparing bootstrap dependencies for installer/ubuntu/bootstrap
######################################################################### 100.0%
Patching debootstrap...
{ \
	sed -e "s/\$TARPARAMS/-j/" \
		-e "s/VERSION=.*/VERSION='1-20221219121458~main:56a040a8'/" \
		build/wrapper.sh \
	&& (cd chromeOSLinux.build && tar --owner=root --group=root -c -j *)\
	&& chmod +x /dev/stdout \
;} > ~/Downloads/test4 || ! rm -f ~/Downloads/test4
gcc -g -Wall -Werror -Wno-error=unused-function -Os src/fbserver.c -lX11 -lXdamage -lXext -lXfixes -lXtst -o chromeOSLinuxfbserver
gcc -g -Wall -Werror -Wno-error=unused-function -Os src/findnacld.c  -o chromeOSLinuxfindnacld
In file included from src/findnacld.c:5:
src/websocket.h:905:13: warning: 'socket_server_init' defined but not used [-Wunused-function]
  905 | static void socket_server_init(int port_) {
      |             ^~~~~~~~~~~~~~~~~~
src/websocket.h:806:12: warning: 'socket_server_accept' defined but not used [-Wunused-function]
  806 | static int socket_server_accept(char* version) {
      |            ^~~~~~~~~~~~~~~~~~~~
gcc -g -Wall -Werror -Wno-error=unused-function -Os src/vtmonitor.c  -o chromeOSLinuxvtmonitor
gcc -g -Wall -Werror -Wno-error=unused-function -Os src/websocket.c  -o chromeOSLinuxwebsocket
gcc -g -Wall -Werror -Wno-error=unused-function -Os src/xi2event.c -lX11 -lXi -o chromeOSLinuxxi2event
gcc -g -Wall -Werror -Wno-error=unused-function -Os -shared -fPIC src/freon.c -ldl -ldrm -I/usr/include/libdrm -o chromeOSLinuxfreon.so
#rm -f chromeOSLinux.zip && zip -q --junk-paths chromeOSLinux.zip 

|-- AUTHORS
|-- Makefile
|-- README.md
|-- Screenshot_2022-12-17_08-02-55.png
|-- build
|   |-- CONTRIBUTORS.sed
|   |-- genversion.sh
|   |-- release.sh
|   `-- wrapper.sh
|-- chromeOSLinux.build
|   |-- chroot-bin
|   |   |-- brightness
|   |   |-- chromeOSLinux-noroot
|   |   |-- chromeOSLinux-unity-autostart
|   |   |-- chromeOSLinuxclip
|   |   |-- chromeOSLinuxcycle
|   |   |-- chromeOSLinuxfindnacl
|   |   |-- chromeOSLinuxlhandler
|   |   |-- chromeOSLinuxnotify
|   |   |-- chromeOSLinuxpowerd
|   |   |-- chromeOSLinuxtriggerd
|   |   |-- chromeOSLinuxversion
|   |   |-- chromeOSLinuxxinitrc-wrapper
|   |   |-- crouton-noroot
|   |   |-- crouton-unity-autostart
|   |   |-- croutonclip
|   |   |-- croutoncycle
|   |   |-- croutonfindnacl
|   |   |-- croutonnotify
|   |   |-- croutonpowerd
|   |   |-- croutontriggerd
|   |   |-- croutonurlhandler
|   |   |-- croutonversion
|   |   |-- croutonxinitrc-wrapper
|   |   |-- gnome-session-wrapper
|   |   |-- host-dbus
|   |   |-- host-wayland
|   |   |-- setres
|   |   |-- startgnome
|   |   |-- startkde -> crouton-noroot
|   |   |-- startlxde -> crouton-noroot
|   |   |-- startunity
|   |   |-- startxfce4 -> crouton-noroot
|   |   |-- volume
|   |   |-- xinit
|   |   |-- xiwi
|   |   `-- z
|   |       |-- chromeOSLinux-noroot
|   |       |-- chromeOSLinux-unity-autostart
|   |       |-- chromeOSLinuxclip
|   |       |-- chromeOSLinuxcycle
|   |       |-- chromeOSLinuxfindnacl
|   |       |-- chromeOSLinuxlhandler
|   |       |-- chromeOSLinuxnotify
|   |       |-- chromeOSLinuxpowerd
|   |       |-- chromeOSLinuxtriggerd
|   |       |-- chromeOSLinuxversion
|   |       |-- chromeOSLinuxxinitrc-wrapper
|   |       |-- cp.sh
|   |       |-- crouton-noroot
|   |       |-- crouton-unity-autostart
|   |       |-- croutonclip
|   |       |-- croutoncycle
|   |       |-- croutonfindnacl
|   |       |-- croutonnotify
|   |       |-- croutonpowerd
|   |       |-- croutontriggerd
|   |       |-- croutonurlhandler
|   |       |-- croutonversion
|   |       `-- croutonxinitrc-wrapper
|   |-- chroot-etc
|   |   |-- chroot-etc-pam-d
|   |   |   `-- su-l
|   |   |-- kodi-cycle.py
|   |   |-- kodi-keyboard.xml
|   |   |-- pulseaudio-default.pa
|   |   |-- unity-autostart.desktop
|   |   |-- unity-profiled
|   |   |-- xbindkeysrc.scm
|   |   |-- xiwi.conf
|   |   |-- xorg-dummy.conf
|   |   |-- xorg-intel-sna.conf
|   |   |-- xserverrc
|   |   |-- xserverrc-local.example
|   |   |-- xserverrc-xiwi
|   |   `-- xserverrc-xorg
|   |-- host-bin
|   |   |-- crash_reporter_wrapper
|   |   |-- delete-chroot
|   |   |-- edit-chroot
|   |   |-- enter-chroot
|   |   |-- mount-chroot
|   |   |-- startcli
|   |   |-- starte17
|   |   |-- startgnome
|   |   |-- startkde
|   |   |-- startkodi
|   |   |-- startlxde
|   |   |-- startunity
|   |   |-- startxfce4
|   |   |-- startxiwi
|   |   `-- unmount-chroot
|   |-- installer
|   |   |-- arch
|   |   |   |-- ar
|   |   |   |-- bootstrap
|   |   |   |-- defaults
|   |   |   |-- getrelease.sh
|   |   |   |-- new
|   |   |   |   `-- arch
|   |   |   |       |-- bootstrap
|   |   |   |       |-- defaults
|   |   |   |       |-- getrelease.sh
|   |   |   |       |-- prepare
|   |   |   |       `-- releases
|   |   |   |-- pkgdetails
|   |   |   |-- prepare
|   |   |   `-- releases
|   |   |-- debian
|   |   |   |-- ar
|   |   |   |-- bootstrap
|   |   |   |-- defaults
|   |   |   |-- getrelease.sh
|   |   |   |-- pkgdetails
|   |   |   |-- prepare
|   |   |   `-- releases
|   |   |-- functions
|   |   |-- gentoo
|   |   |   |-- ar
|   |   |   |-- bootstrap
|   |   |   |-- defaults
|   |   |   |-- getrelease.sh
|   |   |   |-- pkgdetails
|   |   |   |-- prepare
|   |   |   `-- releases
|   |   |-- kali
|   |   |   |-- ar
|   |   |   |-- bootstrap
|   |   |   |-- defaults
|   |   |   |-- getrelease.sh
|   |   |   |-- pkgdetails
|   |   |   |-- prepare
|   |   |   `-- releases
|   |   |-- main.sh
|   |   |-- opensuse
|   |   |   |-- ar
|   |   |   |-- bootstrap
|   |   |   |-- defaults
|   |   |   |-- getrelease.sh
|   |   |   |-- pkgdetails
|   |   |   |-- prepare
|   |   |   `-- releases
|   |   |-- prepare.sh
|   |   `-- ubuntu
|   |       |-- ar
|   |       |-- bootstrap
|   |       |-- defaults
|   |       |-- getrelease.sh
|   |       |-- pkgdetails
|   |       |-- prepare
|   |       `-- releases
|   |-- src
|   |   |-- fbserver-proto.h
|   |   |-- fbserver.c
|   |   |-- findnacld.c
|   |   |-- freon.c
|   |   |-- vtmonitor.c
|   |   |-- websocket.c
|   |   |-- websocket.h
|   |   `-- xi2event.c
|   `-- targets
|       |-- audio
|       |-- chrome
|       |-- chrome-beta
|       |-- chrome-common
|       |-- chrome-dev
|       |-- chromium
|       |-- cli-extra
|       |-- common
|       |-- core
|       |-- e17
|       |-- extension
|       |-- gnome
|       |-- gnome-desktop
|       |-- gtk-extra
|       |-- kde
|       |-- kde-desktop
|       |-- keyboard
|       |-- kodi
|       |-- lxde
|       |-- lxde-desktop
|       |-- mate
|       |-- mate-desktop
|       |-- openoffice
|       |-- post-common
|       |-- tools
|       |-- touch
|       |-- unity
|       |-- unity-desktop
|       |-- x11
|       |-- x11-common
|       |-- xbmc
|       |-- xfce
|       |-- xfce-desktop
|       |-- xiwi
|       `-- xorg
|-- chromeOSLinuxfbserver
|-- chromeOSLinuxfindnacld
|-- chromeOSLinuxfreon.so
|-- chromeOSLinuxvtmonitor
|-- chromeOSLinuxwebsocket
|-- chromeOSLinuxxi2event
|-- chroot-bin
|   |-- brightness
|   |-- chromeOSLinux-noroot
|   |-- chromeOSLinux-unity-autostart
|   |-- chromeOSLinuxclip
|   |-- chromeOSLinuxcycle
|   |-- chromeOSLinuxfindnacl
|   |-- chromeOSLinuxlhandler
|   |-- chromeOSLinuxnotify
|   |-- chromeOSLinuxpowerd
|   |-- chromeOSLinuxtriggerd
|   |-- chromeOSLinuxversion
|   |-- chromeOSLinuxxinitrc-wrapper
|   |-- crouton-noroot
|   |-- crouton-unity-autostart
|   |-- croutonclip
|   |-- croutoncycle
|   |-- croutonfindnacl
|   |-- croutonnotify
|   |-- croutonpowerd
|   |-- croutontriggerd
|   |-- croutonurlhandler
|   |-- croutonversion
|   |-- croutonxinitrc-wrapper
|   |-- gnome-session-wrapper
|   |-- host-dbus
|   |-- host-wayland
|   |-- setres
|   |-- startgnome
|   |-- startkde -> crouton-noroot
|   |-- startlxde -> crouton-noroot
|   |-- startunity
|   |-- startxfce4 -> crouton-noroot
|   |-- volume
|   |-- xinit
|   |-- xiwi
|   `-- z
|       |-- chromeOSLinux-noroot
|       |-- chromeOSLinux-unity-autostart
|       |-- chromeOSLinuxclip
|       |-- chromeOSLinuxcycle
|       |-- chromeOSLinuxfindnacl
|       |-- chromeOSLinuxlhandler
|       |-- chromeOSLinuxnotify
|       |-- chromeOSLinuxpowerd
|       |-- chromeOSLinuxtriggerd
|       |-- chromeOSLinuxversion
|       |-- chromeOSLinuxxinitrc-wrapper
|       |-- cp.sh
|       |-- crouton-noroot
|       |-- crouton-unity-autostart
|       |-- croutonclip
|       |-- croutoncycle
|       |-- croutonfindnacl
|       |-- croutonnotify
|       |-- croutonpowerd
|       |-- croutontriggerd
|       |-- croutonurlhandler
|       |-- croutonversion
|       `-- croutonxinitrc-wrapper
|-- chroot-etc
|   |-- chroot-etc-pam-d
|   |   `-- su-l
|   |-- kodi-cycle.py
|   |-- kodi-keyboard.xml
|   |-- pulseaudio-default.pa
|   |-- unity-autostart.desktop
|   |-- unity-profiled
|   |-- xbindkeysrc.scm
|   |-- xiwi.conf
|   |-- xorg-dummy.conf
|   |-- xorg-intel-sna.conf
|   |-- xserverrc
|   |-- xserverrc-local.example
|   |-- xserverrc-xiwi
|   `-- xserverrc-xorg
|-- debootstrap
|   |-- Makefile
|   |-- README
|   |-- debootstrap
|   |-- debootstrap.8
|   |-- devices.tar.gz
|   |-- functions
|   |-- scripts
|   |   |-- OSS -> opensuse
|   |   |-- aequorea
|   |   |-- alarm -> arch
|   |   |-- amber
|   |   |-- arch
|   |   |-- artful -> gutsy
|   |   |-- ascii -> sid
|   |   |-- bartholomea -> aequorea
|   |   |-- beowulf -> sid
|   |   |-- bionic -> gutsy
|   |   |-- bookworm -> sid
|   |   |-- breezy
|   |   |-- bullseye -> sid
|   |   |-- buster -> sid
|   |   |-- byzantium -> amber
|   |   |-- ceres -> sid
|   |   |-- chromodoris -> aequorea
|   |   |-- cosmic -> gutsy
|   |   |-- crimson -> amber
|   |   |-- dapper
|   |   |-- dasyatis -> aequorea
|   |   |-- debian-common
|   |   |-- disco -> gutsy
|   |   |-- edgy
|   |   |-- eoan -> gutsy
|   |   |-- etch
|   |   |-- etch-m68k -> etch
|   |   |-- feisty
|   |   |-- focal -> gutsy
|   |   |-- gentoo
|   |   |-- gentoo-openstack -> gentoo
|   |   |-- groovy -> gutsy
|   |   |-- gutsy
|   |   |-- hardy -> gutsy
|   |   |-- hirsute -> groovy
|   |   |-- hoary
|   |   |-- hoary.buildd
|   |   |-- impish -> gutsy
|   |   |-- intrepid -> gutsy
|   |   |-- jammy -> gutsy
|   |   |-- jaunty -> gutsy
|   |   |-- jessie -> sid
|   |   |-- jessie-kfreebsd -> sid
|   |   |-- kali
|   |   |-- kali-dev -> kali
|   |   |-- kali-last-snapshot -> kali
|   |   |-- kali-rolling -> kali
|   |   |-- karmic -> gutsy
|   |   |-- kinetic -> gutsy
|   |   |-- leap -> opensuse
|   |   |-- leap-micro -> opensuse
|   |   |-- leap-micro-current -> opensuse
|   |   |-- lenny -> etch
|   |   |-- lucid -> gutsy
|   |   |-- maverick -> gutsy
|   |   |-- natty -> gutsy
|   |   |-- oldoldstable -> sid
|   |   |-- oldstable -> sid
|   |   |-- oneiric -> gutsy
|   |   |-- openSUSE-current -> opensuse
|   |   |-- openSUSE-stable -> opensuse
|   |   |-- opensuse
|   |   |-- potato
|   |   |-- precise -> gutsy
|   |   |-- quantal -> gutsy
|   |   |-- raring -> gutsy
|   |   |-- sarge
|   |   |-- sarge.buildd
|   |   |-- sarge.fakechroot
|   |   |-- saucy -> gutsy
|   |   |-- sid
|   |   |-- squeeze -> etch
|   |   |-- stable -> sid
|   |   |-- stage3 -> gentoo
|   |   |-- stage4 -> gentoo
|   |   |-- stretch -> sid
|   |   |-- testing -> sid
|   |   |-- trixie -> sid
|   |   |-- trusty -> gutsy
|   |   |-- unstable -> sid
|   |   |-- utopic -> gutsy
|   |   |-- vivid -> gutsy
|   |   |-- warty
|   |   |-- warty.buildd
|   |   |-- wheezy -> sid
|   |   |-- wily -> gutsy
|   |   |-- woody
|   |   |-- woody.buildd
|   |   |-- xenial -> gutsy
|   |   |-- yakkety -> gutsy
|   |   `-- zesty -> gutsy
|   `-- scripts.tar.gz
|-- host-bin
|   |-- crash_reporter_wrapper
|   |-- delete-chroot -> edit-chroot
|   |-- edit-chroot
|   |-- enter-chroot
|   |-- mount-chroot
|   |-- startcli
|   |-- starte17
|   |-- startgnome
|   |-- startkde
|   |-- startkodi
|   |-- startlxde
|   |-- startunity
|   |-- startxfce4
|   |-- startxiwi
|   `-- unmount-chroot
|-- host-ext
|   |-- crouton
|   |   |-- background.html
|   |   |-- background.js
|   |   |-- connected-19.png
|   |   |-- connected-38.png
|   |   |-- disabled-19.png
|   |   |-- disabled-38.png
|   |   |-- disconnected-19.png
|   |   |-- disconnected-38.png
|   |   |-- error-19.png
|   |   |-- error-38.png
|   |   |-- first.html
|   |   |-- icon-128.png
|   |   |-- icon-48.png
|   |   |-- kiwi.nmf
|   |   |-- manifest.json
|   |   |-- popup.html
|   |   |-- popup.js
|   |   |-- window.html
|   |   `-- window.js
|   |-- gencrx.sh
|   |-- logo.svg
|   `-- nacl_src
|       |-- Makefile
|       |-- keycode_converter.h
|       `-- kiwi.cc
|-- installer
|   |-- arch
|   |   |-- ar -> ../ubuntu/ar
|   |   |-- bootstrap -> ../ubuntu/bootstrap
|   |   |-- defaults
|   |   |-- getrelease.sh -> ../ubuntu/getrelease.sh
|   |   |-- new
|   |   |   `-- arch
|   |   |       |-- bootstrap
|   |   |       |-- defaults
|   |   |       |-- getrelease.sh
|   |   |       |-- prepare
|   |   |       `-- releases
|   |   |-- pkgdetails -> ../ubuntu/pkgdetails
|   |   |-- prepare -> ../ubuntu/prepare
|   |   `-- releases
|   |-- crouton
|   |-- debian
|   |   |-- ar -> ../ubuntu/ar
|   |   |-- bootstrap -> ../ubuntu/bootstrap
|   |   |-- defaults
|   |   |-- getrelease.sh -> ../ubuntu/getrelease.sh
|   |   |-- pkgdetails -> ../ubuntu/pkgdetails
|   |   |-- prepare -> ../ubuntu/prepare
|   |   `-- releases
|   |-- functions
|   |-- gentoo
|   |   |-- ar -> ../ubuntu/ar
|   |   |-- bootstrap -> ../ubuntu/bootstrap
|   |   |-- defaults
|   |   |-- getrelease.sh -> ../ubuntu/getrelease.sh
|   |   |-- pkgdetails -> ../ubuntu/pkgdetails
|   |   |-- prepare -> ../ubuntu/prepare
|   |   `-- releases
|   |-- kali
|   |   |-- ar -> ../ubuntu/ar
|   |   |-- bootstrap -> ../ubuntu/bootstrap
|   |   |-- defaults
|   |   |-- getrelease.sh -> ../ubuntu/getrelease.sh
|   |   |-- pkgdetails -> ../ubuntu/pkgdetails
|   |   |-- prepare -> ../ubuntu/prepare
|   |   `-- releases
|   |-- main.sh
|   |-- make.txt
|   |-- opensuse
|   |   |-- ar -> ../ubuntu/ar
|   |   |-- bootstrap -> ../ubuntu/bootstrap
|   |   |-- defaults
|   |   |-- getrelease.sh -> ../ubuntu/getrelease.sh
|   |   |-- pkgdetails -> ../ubuntu/pkgdetails
|   |   |-- prepare -> ../ubuntu/prepare
|   |   `-- releases
|   |-- prepare.sh
|   `-- ubuntu
|       |-- ar
|       |-- bootstrap
|       |-- defaults
|       |-- getrelease.sh
|       |-- pkgdetails
|       |-- prepare
|       `-- releases
|-- kernel
|-- src
|   |-- fbserver-proto.h
|   |-- fbserver.c
|   |-- findnacld.c
|   |-- freon.c
|   |-- vtmonitor.c
|   |-- websocket.c
|   |-- websocket.h
|   `-- xi2event.c
|-- targets
|   |-- audio
|   |-- chrome
|   |-- chrome-beta
|   |-- chrome-common
|   |-- chrome-dev
|   |-- chromium
|   |-- cli-extra
|   |-- common
|   |-- core
|   |-- e17
|   |-- extension
|   |-- gnome
|   |-- gnome-desktop
|   |-- gtk-extra
|   |-- kde
|   |-- kde-desktop
|   |-- keyboard
|   |-- kodi
|   |-- lxde
|   |-- lxde-desktop
|   |-- mate
|   |-- mate-desktop
|   |-- openoffice
|   |-- post-common
|   |-- tools
|   |-- touch
|   |-- unity
|   |-- unity-desktop
|   |-- x11
|   |-- x11-common
|   |-- xbmc
|   |-- xfce
|   |-- xfce-desktop
|   |-- xiwi
|   `-- xorg
`-- tree.txt

39 directories, 500 files

```
![Screenshot_2022-12-17_16-15-50](https://user-images.githubusercontent.com/120763310/208271097-bbf981fb-0b3b-4db7-838d-ebebbc63adfa.png)
![Screenshot_2022-12-17_08-02-55](https://user-images.githubusercontent.com/120763310/208250812-35026e0b-325b-40c1-8a1a-02757bf6e682.png)
# chromeOSlinux_test
my attempt at RPM chromebook install with Cras and Xorg with new kernels
![Screenshot_2022-12-17_08-13-54](https://user-images.githubusercontent.com/120763310/208251214-39e7a7f1-c86a-482d-9710-a92222bd118f.png)
