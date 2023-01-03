![](https://github.com/user/banner.png) 
![banner](https://user-images.githubusercontent.com/120763310/208612080-3d83f547-7416-4276-8927-8e5535b8031d.png)
# This is not compatible with crouton shell scripts and the new files need to be copied to your crosh shell /usr/local/bin is using this ie .../bin/chroots cp ./bin/* /usr/local/bin
# test5 has update targets for enlighten WM e7 is now gone also gtk-extra has been update from 2016 or 2023 for gtk3 install

# if you have old crouton scritps you can save them via tar or cp ie sudo tar -czf bin.tar.gz . or sudo mkdir old sudo cp * old
# your usr/local/bin should only have 2 files test5 and mnt.sh
![shot-2023-01-02_22-38-18](https://user-images.githubusercontent.com/120763310/210311183-94201e13-1f0e-4f69-9ce2-55fb0d30720c.jpg)

# 
## For those people you wish to skip the build process just down load test5 and run it
## https://drive.google.com/uc?export=download&id=1gtVFYfr_T6l7vhcLeI8z2hzCO36admsO
# to assist in the mounts being .exec and open please download https://drive.google.com/file/d/1okABZugr72CQTaVQfK3v1VikszTUNFq2/view?usp=sharing
# The is mnt.sh same install cp mnt.sh /usr/local/bin, sudo chmod 755 /usr/local/bin/mnt.sh or install -Dt /usr/local/bin -m 755 ~/Downloads/mnt.sh

# chronos@localhost /usr/local/bin $ sudo test5 -V
# test5: version 1-20230103082635~main:ab215034
# chronos@localhost /usr/local/bin $$ 

## I have not decide on a release default yet Focal maybe bullseye is also being considered
# test5 -p /home/SD/z/ -r bullseye -t xorg,xiwi,xfce -n bull

## With this release test5is namespaced for chromeOSLinux for task and builds in  /usr/local/bin for your local machine you need to have read write to run make all, in you test5 chroot cmd
=======

## I have not decide on a release default yet Focal maybe bullseye is also being considered
## With this release test5 is namespaced for chromeOSLinux for task and builds in  /usr/local/bin for your local machine you need to have read write to run make all, in you test5 chroot cmd
# git clone https://github.com/shaynababe/chromeOSLinux_test
# sudo chmod 777 /usr/local/bin 
# then test5will compile just fine
# make all
## It will download the debootstrap files to local /usr/local/bin not /tmp
## The file for install is test5 and is written to ~/Downloads/test5
## After make all use the ctrl+alt+shift+<- keys to get back to a crosh shell, start a new shell and shell into it. the command of sudo cp ~/Downloads/test5/usr/local/bin then sudo chmod 755 /usr/local/bin/test5or install -Dt /usr/local/bin -m 755 ~/Downloads/test5

## then the sudo test5--help will show the cmds to get chroot installed

## IE sudo test5-p /home/SD/z/ -r bullseye -t xorg,xiwi,xfce -n bull 

#will work 
## if you wish to view the activity start a new shell and cd /usr/local/bin
## you can ls -la to watch the install process 

![Screenshot_2022-12-19_13-48-13](https://user-images.githubusercontent.com/120763310/208530702-a211e371-ba0f-4329-b5d7-433041ba63ad.png)

```bash
chronos@localhost /usr/local/bin $ sudo test5
test5[options] -t targets
test5[options] -f backup_tarball
test5[options] -d -f bootstrap_tarball


Constructs a chroot for running a more standard userspace alongside Chromium OS.

If run with -f, where the tarball is a backup previously made using edit-chroot,
the chroot is restored and relevant scripts installed.

If run with -d, a bootstrap tarball is created to speed up chroot creation in
the future. You can use bootstrap tarballs generated this way by passing them
to -f the next time you create a chroot with the same architecture and release.

test5must be run as root unless -d is specified AND fakeroot is
installed AND /tmp is mounted exec and dev.

It is highly recommended to run this from a crosh shell (Ctrl+Alt+T), not VT2.

Options:
    -a ARCH     The architecture to prepare a new chroot or bootstrap for.
                Default: autodetected for the current chroot or system.
    -b          Restore chromeOSLinux scripts in PREFIX/bin, as required by the
                chroots currently installed in PREFIX/chroots.
    -d          Downloads the bootstrap tarball but does not prepare the chroot.
    -e          Encrypt the chroot with ecryptfs using a passphrase.
                If specified twice, prompt to change the encryption passphrase.
    -f TARBALL  The bootstrap or backup tarball to use, or to download to (-d).
                When using an existing tarball, -a and -r are ignored.
    -k KEYFILE  File or directory to store the (encrypted) encryption keys in.
                If unspecified, the keys will be stored in the chroot if doing a
                first encryption, or auto-detected on existing chroots.
    -m MIRROR   Mirror to use for bootstrapping and package installation.
                Default depends on the release chosen.
                Can only be specified during chroot creation and forced updates
                (-u -u). After installation, the mirror can be modified using
                the distribution's recommended way.
    -M MIRROR2  A secondary mirror, often used for security updates.
                Can only be specified alongside -m.
    -n NAME     Name of the chroot. Default is the release name.
                Cannot contain any slash (/).
    -p PREFIX   The root directory in which to install the bin and chroot
                subdirectories and data.
                Default: /usr/local/, with /usr/local//chroots linked to
                /mnt/stateful_partition/chromeOSLinux/chroots.
    -P PROXY    Set an HTTP proxy for the chroot; effectively sets http_proxy.
                Specify an empty string to remove a proxy when updating.
    -r RELEASE  Name of the distribution release. Default: focal,
                or auto-detected if upgrading a chroot and -n is specified.
                Specify 'help' or 'list' to print out recognized releases.
    -t TARGETS  Comma-separated list of environment targets to install.
                Specify 'help' or 'list' to print out potential targets.
    -T TARGETFILE  Path to a custom target definition file that gets applied to
                the chroot as if it were a target in the test5bundle.
    -u          If the chroot exists, runs the preparation step again.
                You can use this to install new targets or update old ones.
                Passing this parameter twice will force an update even if the
                specified release does not match the one already installed.
    -V          Prints the version of the installer to stdout.

Be aware that dev mode is inherently insecure, even if you have a strong
password in your chroot! Anyone can simply switch VTs and gain root access
unless you've permanently assigned a Chromium OS root password. Encrypted
chroots require you to set a Chromium OS root password, but are still only as
secure as the passphrases you assign to them.


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
remote: Please see https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories
#cloning-with-https-urls for information on currently recommended modes of authentication.
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
```

# (bull3)z@localhost:~/crouton_Penguin/chromeOSLinux_test$ make all, thus build test5 process
# rm -rf chromeOSLinux.build && mkdir -p chromeOSLinux.build \
# && cp -at chromeOSLinux.build --parents 
```bash
chroot-bin/brightness 
chroot-bin/chromeOSLinux-noroot 
chroot-bin/chromeOSLinux-unity-autostart 
chroot-bin/chromeOSLinuxclip chroot-bin/chromeOSLinuxcycle 
chroot-bin/chromeOSLinuxfindnacl chroot-bin/chromeOSLinuxlhandler 
chroot-bin/chromeOSLinuxnotify chroot-bin/chromeOSLinuxpowerd 
chroot-bin/chromeOSLinuxtriggerd chroot-bin/chromeOSLinuxversion 
chroot-bin/chromeOSLinuxxinitrc-wrapper chroot-bin/crouton-noroot
 
chroot-bin/crouton-unity-autostart 
chroot-bin/croutonclip chroot-bin/croutoncycle 
chroot-bin/croutonfindnacl chroot-bin/croutonnotify 
chroot-bin/croutonpowerd 
chroot-bin/croutontriggerd 
chroot-bin/croutonurlhandler 
chroot-bin/croutonversion 
chroot-bin/croutonxinitrc-wrapper
 
chroot-bin/gnome-session-wrapper 
chroot-bin/host-dbus 
chroot-bin/host-wayland 
chroot-bin/setres 
chroot-bin/startgnome 
chroot-bin/startkde 
chroot-bin/startlxde 
chroot-bin/startunity 
chroot-bin/startxfce4 
chroot-bin/volume 
chroot-bin/xinit 
chroot-bin/xiwi chroot-bin/z 

chroot-etc/chroot-etc-pam-d 
chroot-etc/kodi-cycle.py 
chroot-etc/kodi-keyboard.xml 
chroot-etc/pulseaudio-default.pa 
chroot-etc/unity-autostart.desktop 
chroot-etc/unity-profiled 
chroot-etc/xbindkeysrc.scm 
chroot-etc/xiwi.conf 
chroot-etc/xorg-dummy.conf 
chroot-etc/xorg-intel-sna.conf 
chroot-etc/xserverrc 
chroot-etc/xserverrc-local.example 
chroot-etc/xserverrc-xiwi 
chroot-etc/xserverrc-xorg \

# && cp -Lprt chromeOSLinux.build --parents 

host-bin/crash_reporter_wrapper 
host-bin/delete-chroot 
host-bin/edit-chroot 
host-bin/enter-chroot 
host-bin/mount-chroot 
host-bin/startcli 
host-bin/starte17 
host-bin/startgnome 
host-bin/startkde 
host-bin/startkodi 
host-bin/startlxde 
host-bin/startunity 
host-bin/startxfce4 
host-bin/startxiwi 
host-bin/unmount-chroot
 
installer/main.sh 
installer/prepare.sh 
installer/functions 
installer/arch/ar 
installer/arch/bootstrap 
installer/arch/defaults 
installer/arch/getrelease.sh 
installer/arch/new i
nstaller/arch/pkgdetails 
installer/arch/prepare 
installer/arch/releases 
installer/debian/ar 
installer/debian/bootstrap 
installer/debian/defaults 
installer/debian/getrelease.sh 
installer/debian/pkgdetails 
installer/debian/prepare 
installer/debian/releases 
installer/gentoo/ar 
installer/gentoo/bootstrap 
installer/gentoo/defaults 
installer/gentoo/getrelease.sh 
installer/gentoo/pkgdetails 
installer/gentoo/prepare 
installer/gentoo/releases 
installer/kali/ar 
installer/kali/bootstrap 
installer/kali/defaults 
installer/kali/getrelease.sh 
installer/kali/pkgdetails 
installer/kali/prepare 
installer/kali/releases 
installer/opensuse/ar 
installer/opensuse/bootstrap 
installer/opensuse/defaults 
installer/opensuse/getrelease.sh 
installer/opensuse/pkgdetails 
installer/opensuse/prepare 
installer/opensuse/releases 
installer/ubuntu/ar 
installer/ubuntu/bootstrap 
installer/ubuntu/defaults 
installer/ubuntu/getrelease.sh 
installer/ubuntu/pkgdetails 
installer/ubuntu/prepare 
installer/ubuntu/releases
 
src/fbserver-proto.h 
src/fbserver.c 
src/findnacld.c 
src/freon.c 
src/vtmonitor.c 
src/websocket.c 
src/websocket.h 
src/xi2event.c 

targets/audio 
targets/chrome 
targets/chrome-beta 
targets/chrome-common 
targets/chrome-dev 
targets/chromium 
targets/cli-extra 
targets/common 
targets/core 
targets/e17 
targets/extension 
targets/gnome 
targets/gnome-desktop 
targets/gtk-extra 
targets/kde 
targets/kde-desktop 
targets/keyboard 
targets/kodi 
targets/lxde 
targets/lxde-desktop 
targets/mate 
targets/mate-desktop 
targets/openoffice 
targets/post-common 
targets/tools 
targets/touch 
targets/unity 
targets/unity-desktop 
targets/x11 
targets/x11-common 
targets/xbmc 
targets/xfce 
targets/xfce-desktop 
targets/xiwi targets/xorg \
```
## && for bootstrap in installer/arch/bootstrap installer/debian/bootstrap installer/gentoo/bootstrap installer/kali/bootstrap installer/opensuse/bootstrap installer/ubuntu/bootstrap; do \
```bash
	tmp=chromeOSLinux.build; \
	[ -h "$bootstrap" ] && continue; \
	echo "Preparing bootstrap dependencies for $bootstrap" >&2; \
	tmp=chromeOSLinux.build sh -e "$bootstrap" \
		|| ! rm -rf chromeOSLinux.build || exit 1; \
done
Preparing bootstrap dependencies for installer/ubuntu/bootstrap 
### Thus is where test5download debootstrap to local chroot /usr/local/bin in the development compile
######################################################################### 100.0%
Patching debootstrap... # test5patches debootstrap to use curl for some activities because Chosh does not use apt-get but curl works
{ \
	sed -e "s/\$TARPARAMS/-j/" \
		-e "s/VERSION=.*/VERSION='1-20221219121458~main:56a040a8'/" \ # it sets a version for the build
		build/wrapper.sh \
	&& (cd chromeOSLinux.build && tar --owner=root --group=root -c -j *)\ assign root and owner and group 
	&& chmod +x /dev/stdout \
;} > ~/Downloads/test5|| ! rm -f ~/Downloads/test5# set output image
gcc -g -Wall -Werror -Wno-error=unused-function -Os src/fbserver.c -lX11 -lXdamage -lXext -lXfixes -lXtst -o chromeOSLinuxfbserver # write the system tasks
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

## the compile is complete, it runs from /usr/local/bin to install a chroot  /tmp (/usr/local/bin) and ramfs(tmp), this is in swap space and complies with chromeOS security constraints
##
.
├── [Jan  2 14:20]  AUTHORS
├── [Jan  2 14:20]  banner.png
├── [Jan  2 14:20]  Screenshot_2022-12-17_08-02-55.png
├── [Jan  2 14:20]  chroot-etc
│   ├── [Jan  2 14:20]  chroot-etc-pam-d
│   │   └── [Jan  2 14:20]  su-l
│   ├── [Jan  2 14:20]  kodi-cycle.py
│   ├── [Jan  2 14:20]  kodi-keyboard.xml
│   ├── [Jan  2 14:20]  pulseaudio-default.pa
│   ├── [Jan  2 14:20]  unity-autostart.desktop
│   ├── [Jan  2 14:20]  unity-profiled
│   ├── [Jan  2 14:20]  xbindkeysrc.scm
│   ├── [Jan  2 14:20]  xiwi.conf
│   ├── [Jan  2 14:20]  xorg-dummy.conf
│   ├── [Jan  2 14:20]  xorg-intel-sna.conf
│   ├── [Jan  2 14:20]  xserverrc
│   ├── [Jan  2 14:20]  xserverrc-local.example
│   ├── [Jan  2 14:20]  xserverrc-xiwi
│   └── [Jan  2 14:20]  xserverrc-xorg
├── [Jan  2 14:20]  host-ext
│   ├── [Jan  2 14:20]  crouton
│   │   ├── [Jan  2 14:20]  background.html
│   │   ├── [Jan  2 14:20]  background.js
│   │   ├── [Jan  2 14:20]  connected-19.png
│   │   ├── [Jan  2 14:20]  connected-38.png
│   │   ├── [Jan  2 14:20]  disabled-19.png
│   │   ├── [Jan  2 14:20]  disabled-38.png
│   │   ├── [Jan  2 14:20]  disconnected-19.png
│   │   ├── [Jan  2 14:20]  disconnected-38.png
│   │   ├── [Jan  2 14:20]  error-19.png
│   │   ├── [Jan  2 14:20]  error-38.png
│   │   ├── [Jan  2 14:20]  first.html
│   │   ├── [Jan  2 14:20]  icon-128.png
│   │   ├── [Jan  2 14:20]  icon-48.png
│   │   ├── [Jan  2 14:20]  kiwi.nmf
│   │   ├── [Jan  2 14:20]  manifest.json
│   │   ├── [Jan  2 14:20]  popup.html
│   │   ├── [Jan  2 14:20]  popup.js
│   │   ├── [Jan  2 14:20]  window.html
│   │   └── [Jan  2 14:20]  window.js
│   ├── [Jan  2 14:20]  gencrx.sh
│   ├── [Jan  2 14:20]  logo.svg
│   └── [Jan  2 14:20]  nacl_src
│       ├── [Jan  2 14:20]  keycode_converter.h
│       ├── [Jan  2 14:20]  kiwi.cc
│       └── [Jan  2 14:20]  Makefile
├── [Jan  2 14:20]  kernel
├── [Jan  2 14:20]  src
│   ├── [Jan  2 14:20]  fbserver-proto.h
│   ├── [Jan  2 14:20]  fbserver.c
│   ├── [Jan  2 14:20]  findnacld.c
│   ├── [Jan  2 14:20]  freon.c
│   ├── [Jan  2 14:20]  vtmonitor.c
│   ├── [Jan  2 14:20]  websocket.c
│   ├── [Jan  2 14:20]  websocket.h
│   └── [Jan  2 14:20]  xi2event.c
├── [Jan  2 15:19]  Makefile
├── [Jan  2 18:54]  chroot-bin
│   ├── [Jan  2 14:20]  brightness
│   ├── [Jan  2 14:20]  chromeOSLinuxclip
│   ├── [Jan  2 14:20]  chromeOSLinuxcycle
│   ├── [Jan  2 14:20]  chromeOSLinuxfindnacl
│   ├── [Jan  2 14:20]  chromeOSLinuxlhandler
│   ├── [Jan  2 14:20]  chromeOSLinux-noroot
│   ├── [Jan  2 14:20]  chromeOSLinuxnotify
│   ├── [Jan  2 14:20]  chromeOSLinuxpowerd
│   ├── [Jan  2 14:20]  chromeOSLinuxtriggerd
│   ├── [Jan  2 14:20]  chromeOSLinux-unity-autostart
│   ├── [Jan  2 14:20]  chromeOSLinuxurlhandler
│   ├── [Jan  2 14:20]  chromeOSLinuxversion
│   ├── [Jan  2 14:20]  chromeOSLinuxxinitrc-wrapper
│   ├── [Jan  2 14:20]  gnome-session-wrapper
│   ├── [Jan  2 14:20]  host-dbus
│   ├── [Jan  2 14:20]  host-wayland
│   ├── [Jan  2 14:20]  old
│   │   ├── [Jan  2 14:20]  croutonclip
│   │   ├── [Jan  2 14:20]  croutoncycle
│   │   ├── [Jan  2 14:20]  croutonfindnacl
│   │   ├── [Jan  2 14:20]  crouton-noroot
│   │   ├── [Jan  2 14:20]  croutonnotify
│   │   ├── [Jan  2 14:20]  croutonpowerd
│   │   ├── [Jan  2 14:20]  croutontriggerd
│   │   ├── [Jan  2 14:20]  crouton-unity-autostart
│   │   ├── [Jan  2 14:20]  croutonurlhandler
│   │   ├── [Jan  2 14:20]  croutonversion
│   │   └── [Jan  2 14:20]  croutonxinitrc-wrapper
│   ├── [Jan  2 14:20]  setres
│   ├── [Jan  2 14:20]  startxfce4 -> chromeOSLinux-noroot
│   ├── [Jan  2 14:20]  startxkde -> chromeOSLinux-noroot
│   ├── [Jan  2 14:20]  startxlxde -> chromeOSLinux-noroot
│   ├── [Jan  2 14:20]  volume
│   ├── [Jan  2 14:20]  xinit
│   ├── [Jan  2 14:20]  xiwi
│   ├── [Jan  2 14:20]  z
│   │   ├── [Jan  2 14:20]  chromeOSLinuxclip
│   │   ├── [Jan  2 14:20]  chromeOSLinuxcycle
│   │   ├── [Jan  2 14:20]  chromeOSLinuxfindnacl
│   │   ├── [Jan  2 14:20]  chromeOSLinuxlhandler
│   │   ├── [Jan  2 14:20]  chromeOSLinux-noroot
│   │   ├── [Jan  2 14:20]  chromeOSLinuxnotify
│   │   ├── [Jan  2 14:20]  chromeOSLinuxpowerd
│   │   ├── [Jan  2 14:20]  chromeOSLinuxtriggerd
│   │   ├── [Jan  2 14:20]  chromeOSLinux-unity-autostart
│   │   ├── [Jan  2 14:20]  chromeOSLinuxurlhandler
│   │   ├── [Jan  2 14:20]  chromeOSLinuxversion
│   │   ├── [Jan  2 14:20]  chromeOSLinuxxinitrc-wrapper
│   │   ├── [Jan  2 14:20]  cp.sh
│   │   ├── [Jan  2 14:20]  croutonclip
│   │   ├── [Jan  2 14:20]  croutoncycle
│   │   ├── [Jan  2 14:20]  croutonfindnacl
│   │   ├── [Jan  2 14:20]  crouton-noroot
│   │   ├── [Jan  2 14:20]  croutonnotify
│   │   ├── [Jan  2 14:20]  croutonpowerd
│   │   ├── [Jan  2 14:20]  croutontriggerd
│   │   ├── [Jan  2 14:20]  crouton-unity-autostart
│   │   ├── [Jan  2 14:20]  croutonurlhandler
│   │   ├── [Jan  2 14:20]  croutonversion
│   │   └── [Jan  2 14:20]  croutonxinitrc-wrapper
│   └── [Jan  2 15:12]  startxenlightenment -> chromeOSLinux-noroot
├── [Jan  3 03:10]  README (copy 1).md
├── [Jan  3 03:35]  chromeOSLinuxfbserver
├── [Jan  3 03:35]  chromeOSLinuxfindnacld
├── [Jan  3 03:35]  chromeOSLinuxvtmonitor
├── [Jan  3 03:35]  chromeOSLinuxwebsocket
├── [Jan  3 03:35]  chromeOSLinuxfreon.so
├── [Jan  3 03:35]  chromeOSLinuxxi2event
├── [Jan  3 03:47]  debootstrap
│   ├── [Jan  2 14:20]  debootstrap
│   ├── [Jan  2 14:20]  debootstrap.8
│   ├── [Jan  2 14:20]  devices.tar.gz
│   ├── [Jan  2 14:20]  Makefile
│   ├── [Jan  2 14:20]  README
│   ├── [Jan  2 14:20]  scripts
│   │   ├── [Jan  2 14:20]  aequorea
│   │   ├── [Jan  2 14:20]  alarm -> arch
│   │   ├── [Jan  2 14:20]  amber
│   │   ├── [Jan  2 14:20]  arch
│   │   ├── [Jan  2 14:20]  artful -> gutsy
│   │   ├── [Jan  2 14:20]  ascii -> sid
│   │   ├── [Jan  2 14:20]  bartholomea -> aequorea
│   │   ├── [Jan  2 14:20]  beowulf -> sid
│   │   ├── [Jan  2 14:20]  bionic -> gutsy
│   │   ├── [Jan  2 14:20]  bookworm -> sid
│   │   ├── [Jan  2 14:20]  breezy
│   │   ├── [Jan  2 14:20]  bullseye -> sid
│   │   ├── [Jan  2 14:20]  buster -> sid
│   │   ├── [Jan  2 14:20]  byzantium -> amber
│   │   ├── [Jan  2 14:20]  ceres -> sid
│   │   ├── [Jan  2 14:20]  chromodoris -> aequorea
│   │   ├── [Jan  2 14:20]  cosmic -> gutsy
│   │   ├── [Jan  2 14:20]  crimson -> amber
│   │   ├── [Jan  2 14:20]  dapper
│   │   ├── [Jan  2 14:20]  dasyatis -> aequorea
│   │   ├── [Jan  2 14:20]  debian-common
│   │   ├── [Jan  2 14:20]  disco -> gutsy
│   │   ├── [Jan  2 14:20]  edgy
│   │   ├── [Jan  2 14:20]  eoan -> gutsy
│   │   ├── [Jan  2 14:20]  etch
│   │   ├── [Jan  2 14:20]  etch-m68k -> etch
│   │   ├── [Jan  2 14:20]  feisty
│   │   ├── [Jan  2 14:20]  focal -> gutsy
│   │   ├── [Jan  2 14:20]  gentoo
│   │   ├── [Jan  2 14:20]  gentoo-openstack -> gentoo
│   │   ├── [Jan  2 14:20]  groovy -> gutsy
│   │   ├── [Jan  2 14:20]  gutsy
│   │   ├── [Jan  2 14:20]  hardy -> gutsy
│   │   ├── [Jan  2 14:20]  hirsute -> groovy
│   │   ├── [Jan  2 14:20]  hoary
│   │   ├── [Jan  2 14:20]  hoary.buildd
│   │   ├── [Jan  2 14:20]  impish -> gutsy
│   │   ├── [Jan  2 14:20]  intrepid -> gutsy
│   │   ├── [Jan  2 14:20]  jammy -> gutsy
│   │   ├── [Jan  2 14:20]  jaunty -> gutsy
│   │   ├── [Jan  2 14:20]  jessie -> sid
│   │   ├── [Jan  2 14:20]  jessie-kfreebsd -> sid
│   │   ├── [Jan  2 14:20]  kali
│   │   ├── [Jan  2 14:20]  kali-dev -> kali
│   │   ├── [Jan  2 14:20]  kali-last-snapshot -> kali
│   │   ├── [Jan  2 14:20]  kali-rolling -> kali
│   │   ├── [Jan  2 14:20]  karmic -> gutsy
│   │   ├── [Jan  2 14:20]  kinetic -> gutsy
│   │   ├── [Jan  2 14:20]  leap -> opensuse
│   │   ├── [Jan  2 14:20]  leap-micro -> opensuse
│   │   ├── [Jan  2 14:20]  leap-micro-current -> opensuse
│   │   ├── [Jan  2 14:20]  lenny -> etch
│   │   ├── [Jan  2 14:20]  lucid -> gutsy
│   │   ├── [Jan  2 14:20]  maverick -> gutsy
│   │   ├── [Jan  2 14:20]  natty -> gutsy
│   │   ├── [Jan  2 14:20]  oldoldstable -> sid
│   │   ├── [Jan  2 14:20]  oldstable -> sid
│   │   ├── [Jan  2 14:20]  oneiric -> gutsy
│   │   ├── [Jan  2 14:20]  opensuse
│   │   ├── [Jan  2 14:20]  openSUSE-current -> opensuse
│   │   ├── [Jan  2 14:20]  openSUSE-stable -> opensuse
│   │   ├── [Jan  2 14:20]  OSS -> opensuse
│   │   ├── [Jan  2 14:20]  potato
│   │   ├── [Jan  2 14:20]  precise -> gutsy
│   │   ├── [Jan  2 14:20]  quantal -> gutsy
│   │   ├── [Jan  2 14:20]  raring -> gutsy
│   │   ├── [Jan  2 14:20]  sarge
│   │   ├── [Jan  2 14:20]  sarge.buildd
│   │   ├── [Jan  2 14:20]  sarge.fakechroot
│   │   ├── [Jan  2 14:20]  saucy -> gutsy
│   │   ├── [Jan  2 14:20]  sid
│   │   ├── [Jan  2 14:20]  squeeze -> etch
│   │   ├── [Jan  2 14:20]  stable -> sid
│   │   ├── [Jan  2 14:20]  stage3 -> gentoo
│   │   ├── [Jan  2 14:20]  stage4 -> gentoo
│   │   ├── [Jan  2 14:20]  stretch -> sid
│   │   ├── [Jan  2 14:20]  testing -> sid
│   │   ├── [Jan  2 14:20]  trixie -> sid
│   │   ├── [Jan  2 14:20]  trusty -> gutsy
│   │   ├── [Jan  2 14:20]  unstable -> sid
│   │   ├── [Jan  2 14:20]  utopic -> gutsy
│   │   ├── [Jan  2 14:20]  vivid -> gutsy
│   │   ├── [Jan  2 14:20]  warty
│   │   ├── [Jan  2 14:20]  warty.buildd
│   │   ├── [Jan  2 14:20]  wheezy -> sid
│   │   ├── [Jan  2 14:20]  wily -> gutsy
│   │   ├── [Jan  2 14:20]  woody
│   │   ├── [Jan  2 14:20]  woody.buildd
│   │   ├── [Jan  2 14:20]  xenial -> gutsy
│   │   ├── [Jan  2 14:20]  yakkety -> gutsy
│   │   └── [Jan  2 14:20]  zesty -> gutsy
│   ├── [Jan  2 14:20]  scripts.tar.gz
│   └── [Jan  3 03:47]  functions
├── [Jan  3 03:53]  build
│   ├── [Jan  2 14:20]  CONTRIBUTORS.sed
│   ├── [Jan  2 14:20]  genversion.sh
│   ├── [Jan  2 14:20]  release.sh
│   └── [Jan  3 03:53]  wrapper.sh
├── [Jan  3 04:39]  installer
│   ├── [Jan  2 14:20]  arch
│   │   ├── [Jan  2 14:20]  ar -> ../ubuntu/ar
│   │   ├── [Jan  2 14:20]  bootstrap -> ../ubuntu/bootstrap
│   │   ├── [Jan  2 14:20]  defaults
│   │   ├── [Jan  2 14:20]  getrelease.sh -> ../ubuntu/getrelease.sh
│   │   ├── [Jan  2 14:20]  new
│   │   │   └── [Jan  2 14:20]  arch
│   │   │       ├── [Jan  2 14:20]  bootstrap
│   │   │       ├── [Jan  2 14:20]  defaults
│   │   │       ├── [Jan  2 14:20]  getrelease.sh
│   │   │       ├── [Jan  2 14:20]  prepare
│   │   │       └── [Jan  2 14:20]  releases
│   │   ├── [Jan  2 14:20]  pkgdetails -> ../ubuntu/pkgdetails
│   │   ├── [Jan  2 14:20]  prepare -> ../ubuntu/prepare
│   │   └── [Jan  2 14:20]  releases
│   ├── [Jan  2 14:20]  debian
│   │   ├── [Jan  2 14:20]  ar -> ../ubuntu/ar
│   │   ├── [Jan  2 14:20]  bootstrap -> ../ubuntu/bootstrap
│   │   ├── [Jan  2 14:20]  defaults
│   │   ├── [Jan  2 14:20]  getrelease.sh -> ../ubuntu/getrelease.sh
│   │   ├── [Jan  2 14:20]  pkgdetails -> ../ubuntu/pkgdetails
│   │   ├── [Jan  2 14:20]  prepare -> ../ubuntu/prepare
│   │   └── [Jan  2 14:20]  releases
│   ├── [Jan  2 14:20]  functions
│   ├── [Jan  2 14:20]  gentoo
│   │   ├── [Jan  2 14:20]  ar -> ../ubuntu/ar
│   │   ├── [Jan  2 14:20]  bootstrap -> ../ubuntu/bootstrap
│   │   ├── [Jan  2 14:20]  defaults
│   │   ├── [Jan  2 14:20]  getrelease.sh -> ../ubuntu/getrelease.sh
│   │   ├── [Jan  2 14:20]  pkgdetails -> ../ubuntu/pkgdetails
│   │   ├── [Jan  2 14:20]  prepare -> ../ubuntu/prepare
│   │   └── [Jan  2 14:20]  releases
│   ├── [Jan  2 14:20]  kali
│   │   ├── [Jan  2 14:20]  ar -> ../ubuntu/ar
│   │   ├── [Jan  2 14:20]  bootstrap -> ../ubuntu/bootstrap
│   │   ├── [Jan  2 14:20]  defaults
│   │   ├── [Jan  2 14:20]  getrelease.sh -> ../ubuntu/getrelease.sh
│   │   ├── [Jan  2 14:20]  pkgdetails -> ../ubuntu/pkgdetails
│   │   ├── [Jan  2 14:20]  prepare -> ../ubuntu/prepare
│   │   └── [Jan  2 14:20]  releases
│   ├── [Jan  2 14:20]  make.txt
│   ├── [Jan  2 14:20]  opensuse
│   │   ├── [Jan  2 14:20]  ar -> ../ubuntu/ar
│   │   ├── [Jan  2 14:20]  bootstrap -> ../ubuntu/bootstrap
│   │   ├── [Jan  2 14:20]  defaults
│   │   ├── [Jan  2 14:20]  getrelease.sh -> ../ubuntu/getrelease.sh
│   │   ├── [Jan  2 14:20]  pkgdetails -> ../ubuntu/pkgdetails
│   │   ├── [Jan  2 14:20]  prepare -> ../ubuntu/prepare
│   │   └── [Jan  2 14:20]  releases
│   ├── [Jan  2 14:55]  prepare.sh
│   ├── [Jan  2 15:06]  ubuntu
│   │   ├── [Jan  2 13:34]  releases
│   │   ├── [Jan  2 14:20]  ar
│   │   ├── [Jan  2 14:20]  defaults
│   │   ├── [Jan  2 14:20]  getrelease.sh
│   │   ├── [Jan  2 14:20]  pkgdetails
│   │   ├── [Jan  2 14:20]  prepare
│   │   └── [Jan  2 15:06]  bootstrap
│   ├── [Jan  3 04:00]  crouton
│   └── [Jan  3 04:39]  main.sh
├── [Jan  3 08:26]  host-bin
│   ├── [Jan  2 14:20]  delete-chroot -> edit-chroot
│   ├── [Jan  2 14:20]  edit-chroot
│   ├── [Jan  2 14:20]  startcli
│   ├── [Jan  2 14:20]  startgnome
│   ├── [Jan  2 14:20]  startkde
│   ├── [Jan  2 14:20]  startkodi
│   ├── [Jan  2 14:20]  startlxde
│   ├── [Jan  2 14:20]  startunity
│   ├── [Jan  2 14:20]  startxfce4
│   ├── [Jan  2 14:20]  startxiwi
│   ├── [Jan  2 14:20]  unmount-chroot
│   ├── [Jan  2 17:19]  crash_reporter_wrapper
│   ├── [Jan  2 18:54]  startxenlightenment
│   ├── [Jan  3 08:23]  mount-chroot
│   └── [Jan  3 08:26]  enter-chroot
├── [Jan  3 08:59]  chromeOSLinux.build
│   ├── [Jan  3 04:39]  installer
│   │   ├── [Jan  2 14:20]  functions
│   │   ├── [Jan  2 14:55]  prepare.sh
│   │   ├── [Jan  3 04:39]  main.sh
│   │   ├── [Jan  3 08:59]  arch
│   │   │   ├── [Jan  2 14:20]  ar
│   │   │   ├── [Jan  2 14:20]  defaults
│   │   │   ├── [Jan  2 14:20]  getrelease.sh
│   │   │   ├── [Jan  2 14:20]  new
│   │   │   │   └── [Jan  2 14:20]  arch
│   │   │   │       ├── [Jan  2 14:20]  bootstrap
│   │   │   │       ├── [Jan  2 14:20]  defaults
│   │   │   │       ├── [Jan  2 14:20]  getrelease.sh
│   │   │   │       ├── [Jan  2 14:20]  prepare
│   │   │   │       └── [Jan  2 14:20]  releases
│   │   │   ├── [Jan  2 14:20]  pkgdetails
│   │   │   ├── [Jan  2 14:20]  prepare
│   │   │   ├── [Jan  2 14:20]  releases
│   │   │   └── [Jan  2 15:06]  bootstrap
│   │   ├── [Jan  3 08:59]  debian
│   │   │   ├── [Jan  2 14:20]  ar
│   │   │   ├── [Jan  2 14:20]  defaults
│   │   │   ├── [Jan  2 14:20]  getrelease.sh
│   │   │   ├── [Jan  2 14:20]  pkgdetails
│   │   │   ├── [Jan  2 14:20]  prepare
│   │   │   ├── [Jan  2 14:20]  releases
│   │   │   └── [Jan  2 15:06]  bootstrap
│   │   ├── [Jan  3 08:59]  gentoo
│   │   │   ├── [Jan  2 14:20]  ar
│   │   │   ├── [Jan  2 14:20]  defaults
│   │   │   ├── [Jan  2 14:20]  getrelease.sh
│   │   │   ├── [Jan  2 14:20]  pkgdetails
│   │   │   ├── [Jan  2 14:20]  prepare
│   │   │   ├── [Jan  2 14:20]  releases
│   │   │   └── [Jan  2 15:06]  bootstrap
│   │   ├── [Jan  3 08:59]  kali
│   │   │   ├── [Jan  2 14:20]  ar
│   │   │   ├── [Jan  2 14:20]  defaults
│   │   │   ├── [Jan  2 14:20]  getrelease.sh
│   │   │   ├── [Jan  2 14:20]  pkgdetails
│   │   │   ├── [Jan  2 14:20]  prepare
│   │   │   ├── [Jan  2 14:20]  releases
│   │   │   └── [Jan  2 15:06]  bootstrap
│   │   ├── [Jan  3 08:59]  opensuse
│   │   │   ├── [Jan  2 14:20]  ar
│   │   │   ├── [Jan  2 14:20]  defaults
│   │   │   ├── [Jan  2 14:20]  getrelease.sh
│   │   │   ├── [Jan  2 14:20]  pkgdetails
│   │   │   ├── [Jan  2 14:20]  prepare
│   │   │   ├── [Jan  2 14:20]  releases
│   │   │   └── [Jan  2 15:06]  bootstrap
│   │   └── [Jan  3 08:59]  ubuntu
│   │       ├── [Jan  2 13:34]  releases
│   │       ├── [Jan  2 14:20]  ar
│   │       ├── [Jan  2 14:20]  defaults
│   │       ├── [Jan  2 14:20]  getrelease.sh
│   │       ├── [Jan  2 14:20]  pkgdetails
│   │       ├── [Jan  2 14:20]  prepare
│   │       └── [Jan  2 15:06]  bootstrap
│   ├── [Jan  3 08:59]  chroot-bin
│   │   ├── [Jan  2 14:20]  brightness
│   │   ├── [Jan  2 14:20]  chromeOSLinuxclip
│   │   ├── [Jan  2 14:20]  chromeOSLinuxcycle
│   │   ├── [Jan  2 14:20]  chromeOSLinuxfindnacl
│   │   ├── [Jan  2 14:20]  chromeOSLinuxlhandler
│   │   ├── [Jan  2 14:20]  chromeOSLinux-noroot
│   │   ├── [Jan  2 14:20]  chromeOSLinuxnotify
│   │   ├── [Jan  2 14:20]  chromeOSLinuxpowerd
│   │   ├── [Jan  2 14:20]  chromeOSLinuxtriggerd
│   │   ├── [Jan  2 14:20]  chromeOSLinux-unity-autostart
│   │   ├── [Jan  2 14:20]  chromeOSLinuxurlhandler
│   │   ├── [Jan  2 14:20]  chromeOSLinuxversion
│   │   ├── [Jan  2 14:20]  chromeOSLinuxxinitrc-wrapper
│   │   ├── [Jan  2 14:20]  gnome-session-wrapper
│   │   ├── [Jan  2 14:20]  host-dbus
│   │   ├── [Jan  2 14:20]  host-wayland
│   │   ├── [Jan  2 14:20]  old
│   │   │   ├── [Jan  2 14:20]  croutonclip
│   │   │   ├── [Jan  2 14:20]  croutoncycle
│   │   │   ├── [Jan  2 14:20]  croutonfindnacl
│   │   │   ├── [Jan  2 14:20]  crouton-noroot
│   │   │   ├── [Jan  2 14:20]  croutonnotify
│   │   │   ├── [Jan  2 14:20]  croutonpowerd
│   │   │   ├── [Jan  2 14:20]  croutontriggerd
│   │   │   ├── [Jan  2 14:20]  crouton-unity-autostart
│   │   │   ├── [Jan  2 14:20]  croutonurlhandler
│   │   │   ├── [Jan  2 14:20]  croutonversion
│   │   │   └── [Jan  2 14:20]  croutonxinitrc-wrapper
│   │   ├── [Jan  2 14:20]  setres
│   │   ├── [Jan  2 14:20]  startxfce4 -> chromeOSLinux-noroot
│   │   ├── [Jan  2 14:20]  startxkde -> chromeOSLinux-noroot
│   │   ├── [Jan  2 14:20]  startxlxde -> chromeOSLinux-noroot
│   │   ├── [Jan  2 14:20]  volume
│   │   ├── [Jan  2 14:20]  xinit
│   │   ├── [Jan  2 14:20]  xiwi
│   │   ├── [Jan  2 14:20]  z
│   │   │   ├── [Jan  2 14:20]  chromeOSLinuxclip
│   │   │   ├── [Jan  2 14:20]  chromeOSLinuxcycle
│   │   │   ├── [Jan  2 14:20]  chromeOSLinuxfindnacl
│   │   │   ├── [Jan  2 14:20]  chromeOSLinuxlhandler
│   │   │   ├── [Jan  2 14:20]  chromeOSLinux-noroot
│   │   │   ├── [Jan  2 14:20]  chromeOSLinuxnotify
│   │   │   ├── [Jan  2 14:20]  chromeOSLinuxpowerd
│   │   │   ├── [Jan  2 14:20]  chromeOSLinuxtriggerd
│   │   │   ├── [Jan  2 14:20]  chromeOSLinux-unity-autostart
│   │   │   ├── [Jan  2 14:20]  chromeOSLinuxurlhandler
│   │   │   ├── [Jan  2 14:20]  chromeOSLinuxversion
│   │   │   ├── [Jan  2 14:20]  chromeOSLinuxxinitrc-wrapper
│   │   │   ├── [Jan  2 14:20]  cp.sh
│   │   │   ├── [Jan  2 14:20]  croutonclip
│   │   │   ├── [Jan  2 14:20]  croutoncycle
│   │   │   ├── [Jan  2 14:20]  croutonfindnacl
│   │   │   ├── [Jan  2 14:20]  crouton-noroot
│   │   │   ├── [Jan  2 14:20]  croutonnotify
│   │   │   ├── [Jan  2 14:20]  croutonpowerd
│   │   │   ├── [Jan  2 14:20]  croutontriggerd
│   │   │   ├── [Jan  2 14:20]  crouton-unity-autostart
│   │   │   ├── [Jan  2 14:20]  croutonurlhandler
│   │   │   ├── [Jan  2 14:20]  croutonversion
│   │   │   └── [Jan  2 14:20]  croutonxinitrc-wrapper
│   │   └── [Jan  2 15:12]  startxenlightenment -> chromeOSLinux-noroot
│   ├── [Jan  3 08:59]  chroot-etc
│   │   ├── [Jan  2 14:20]  chroot-etc-pam-d
│   │   │   └── [Jan  2 14:20]  su-l
│   │   ├── [Jan  2 14:20]  kodi-cycle.py
│   │   ├── [Jan  2 14:20]  kodi-keyboard.xml
│   │   ├── [Jan  2 14:20]  pulseaudio-default.pa
│   │   ├── [Jan  2 14:20]  unity-autostart.desktop
│   │   ├── [Jan  2 14:20]  unity-profiled
│   │   ├── [Jan  2 14:20]  xbindkeysrc.scm
│   │   ├── [Jan  2 14:20]  xiwi.conf
│   │   ├── [Jan  2 14:20]  xorg-dummy.conf
│   │   ├── [Jan  2 14:20]  xorg-intel-sna.conf
│   │   ├── [Jan  2 14:20]  xserverrc
│   │   ├── [Jan  2 14:20]  xserverrc-local.example
│   │   ├── [Jan  2 14:20]  xserverrc-xiwi
│   │   └── [Jan  2 14:20]  xserverrc-xorg
│   ├── [Jan  3 08:59]  host-bin
│   │   ├── [Jan  2 14:20]  delete-chroot
│   │   ├── [Jan  2 14:20]  edit-chroot
│   │   ├── [Jan  2 14:20]  startcli
│   │   ├── [Jan  2 14:20]  startgnome
│   │   ├── [Jan  2 14:20]  startkde
│   │   ├── [Jan  2 14:20]  startkodi
│   │   ├── [Jan  2 14:20]  startlxde
│   │   ├── [Jan  2 14:20]  startunity
│   │   ├── [Jan  2 14:20]  startxfce4
│   │   ├── [Jan  2 14:20]  startxiwi
│   │   ├── [Jan  2 14:20]  unmount-chroot
│   │   ├── [Jan  2 17:19]  crash_reporter_wrapper
│   │   ├── [Jan  2 18:54]  startxenlightenment
│   │   ├── [Jan  3 08:23]  mount-chroot
│   │   └── [Jan  3 08:26]  enter-chroot
│   ├── [Jan  3 08:59]  src
│   │   ├── [Jan  2 14:20]  fbserver-proto.h
│   │   ├── [Jan  2 14:20]  fbserver.c
│   │   ├── [Jan  2 14:20]  findnacld.c
│   │   ├── [Jan  2 14:20]  freon.c
│   │   ├── [Jan  2 14:20]  vtmonitor.c
│   │   ├── [Jan  2 14:20]  websocket.c
│   │   ├── [Jan  2 14:20]  websocket.h
│   │   └── [Jan  2 14:20]  xi2event.c
│   └── [Jan  3 08:59]  targets
│       ├── [Jan  2 14:21]  chrome
│       ├── [Jan  2 14:21]  chrome-beta
│       ├── [Jan  2 14:21]  chrome-common
│       ├── [Jan  2 14:21]  chrome-dev
│       ├── [Jan  2 14:21]  chromium
│       ├── [Jan  2 14:21]  cli-extra
│       ├── [Jan  2 14:21]  common
│       ├── [Jan  2 14:21]  enlightenment_dev
│       ├── [Jan  2 14:21]  extension
│       ├── [Jan  2 14:21]  gnome
│       ├── [Jan  2 14:21]  gtk-extra
│       ├── [Jan  2 14:21]  kde
│       ├── [Jan  2 14:21]  keyboard
│       ├── [Jan  2 14:21]  kodi
│       ├── [Jan  2 14:21]  lxde
│       ├── [Jan  2 14:21]  lxde-desktop
│       ├── [Jan  2 14:21]  mate
│       ├── [Jan  2 14:21]  mate-desktop
│       ├── [Jan  2 14:21]  openoffice
│       ├── [Jan  2 14:21]  post-common
│       ├── [Jan  2 14:21]  touch
│       ├── [Jan  2 14:21]  unity
│       ├── [Jan  2 14:21]  unity-desktop
│       ├── [Jan  2 14:21]  x11
│       ├── [Jan  2 14:21]  x11-common
│       ├── [Jan  2 14:21]  xbmc
│       ├── [Jan  2 14:21]  xfce-desktop
│       ├── [Jan  2 15:56]  audio
│       ├── [Jan  2 21:31]  enlightenment
│       ├── [Jan  3 05:06]  xfce
│       ├── [Jan  3 05:06]  kde-desktop
│       ├── [Jan  3 05:09]  plasma
│       ├── [Jan  3 05:09]  gnome-desktop
│       ├── [Jan  3 05:15]  xorg
│       ├── [Jan  3 08:01]  tools
│       ├── [Jan  3 08:54]  core
│       └── [Jan  3 08:58]  xiwi
├── [Jan  3 09:22]  README.md
├── [Jan  3 09:23]  targets
│   ├── [Jan  2 14:21]  chrome
│   ├── [Jan  2 14:21]  chrome-beta
│   ├── [Jan  2 14:21]  chrome-common
│   ├── [Jan  2 14:21]  chrome-dev
│   ├── [Jan  2 14:21]  chromium
│   ├── [Jan  2 14:21]  cli-extra
│   ├── [Jan  2 14:21]  common
│   ├── [Jan  2 14:21]  enlightenment_dev
│   ├── [Jan  2 14:21]  extension
│   ├── [Jan  2 14:21]  gnome
│   ├── [Jan  2 14:21]  gtk-extra
│   ├── [Jan  2 14:21]  kde
│   ├── [Jan  2 14:21]  keyboard
│   ├── [Jan  2 14:21]  kodi
│   ├── [Jan  2 14:21]  lxde
│   ├── [Jan  2 14:21]  lxde-desktop
│   ├── [Jan  2 14:21]  mate
│   ├── [Jan  2 14:21]  mate-desktop
│   ├── [Jan  2 14:21]  openoffice
│   ├── [Jan  2 14:21]  post-common
│   ├── [Jan  2 14:21]  touch
│   ├── [Jan  2 14:21]  unity
│   ├── [Jan  2 14:21]  unity-desktop
│   ├── [Jan  2 14:21]  x11
│   ├── [Jan  2 14:21]  x11-common
│   ├── [Jan  2 14:21]  xbmc
│   ├── [Jan  2 14:21]  xfce-desktop
│   ├── [Jan  2 15:56]  audio
│   ├── [Jan  3 05:06]  xfce
│   ├── [Jan  3 05:06]  kde-desktop
│   ├── [Jan  3 05:09]  plasma
│   ├── [Jan  3 05:09]  gnome-desktop
│   ├── [Jan  3 05:15]  xorg
│   ├── [Jan  3 08:01]  tools
│   ├── [Jan  3 08:54]  core
│   ├── [Jan  3 08:58]  xiwi
│   └── [Jan  3 09:23]  enlightenment
└── [Jan  3 09:27]  tree.txt

41 directories, 508 files
```
![Screenshot_2022-12-17_16-15-50](https://user-images.githubusercontent.com/120763310/208271097-bbf981fb-0b3b-4db7-838d-ebebbc63adfa.png)
![Screenshot_2022-12-17_08-02-55](https://user-images.githubusercontent.com/120763310/208250812-35026e0b-325b-40c1-8a1a-02757bf6e682.png)
# chromeOSlinux_test
my attempt at RPM chromebook install with Cras and Xorg with new kernels
![Screenshot_2022-12-17_08-13-54](https://user-images.githubusercontent.com/120763310/208251214-39e7a7f1-c86a-482d-9710-a92222bd118f.png)
