#!/bin/bash -e

#install cmdline.txt
install -v -m 644 files/cmdline.txt "${ROOTFS_DIR}/boot/cmdline.txt"

#splash screen
install -v -m 644 files/initramfs.img "${ROOTFS_DIR}/boot/initramfs.img"
install -v -m 644 files/splash.png "${ROOTFS_DIR}/boot/splash.png"
install -v -m 644 files/splash.txt "${ROOTFS_DIR}/boot/splash.txt"

#add static route for multicasts
install -v -m 644 files/50-multicast "${ROOTFS_DIR}/lib/dhcpcd/dhcpcd-hooks/50-multicast"

#add libs to ldconfg
install -v -m 644 files/pam2.conf "${ROOTFS_DIR}/etc/ld.so.conf.d/pam2.conf"

#configure openbox autostart
install -v -m 644 files/autologin "${ROOTFS_DIR}/etc/systemd/system/getty@tty1.service.d/autologin.conf"
install -v -m 644 files/autostart "${ROOTFS_DIR}/etc/xdg/openbox/autostart"
install -v -m 644 files/.bash_profile "${ROOTFS_DIR}/home/pam/.bash_profile"


#install pam files
mkdir -p "${ROOTFS_DIR}/usr/local/lib/pam2/generator/"
mkdir -p "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/"
mkdir -p "${ROOTFS_DIR}/usr/local/lib/pam2/test/"
mkdir -p "${ROOTFS_DIR}/home/pam/pam/generator"

install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pam"
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pam/generator"

install -v -m 755 files/pam/bin/pam2 "${ROOTFS_DIR}/usr/local/bin/pam2"
install -v -m 755 files/pam/bin/pam.sh "${ROOTFS_DIR}/usr/local/bin/pam.sh"
install -v -m 755 files/pam/bin/dosetup "${ROOTFS_DIR}/usr/local/bin/dosetup"
install -v -m 755 files/pam/bin/InitialSetup "${ROOTFS_DIR}/usr/local/bin/InitialSetup"
install -v -m 644 files/pam/lib/libnmos_base.so "${ROOTFS_DIR}/usr/local/lib/libnmos_base.so"
install -v -m 644 files/pam/lib/libnmos_client.so "${ROOTFS_DIR}/usr/local/lib/libnmos_client.so"
install -v -m 644 files/pam/lib/libnmos_node.so "${ROOTFS_DIR}/usr/local/lib/libnmos_node.so"
install -v -m 644 files/pam/lib/libpambase.so "${ROOTFS_DIR}/usr/local/lib/libpambase.so"
install -v -m 644 files/pam/lib/libpamfft.so "${ROOTFS_DIR}/usr/local/lib/libpamfft.so"
install -v -m 644 files/pam/lib/libpamlevel.so "${ROOTFS_DIR}/usr/local/lib/libpamlevel.so"
install -v -m 644 files/pam/lib/libpml_dnssd.so "${ROOTFS_DIR}/usr/local/lib/libpml_dnssd.so"
install -v -m 644 files/pam/lib/libpml_log.so "${ROOTFS_DIR}/usr/local/lib/libpml_log.so"
install -v -m 644 files/pam/lib/libptpmonkey.so "${ROOTFS_DIR}/usr/local/lib/libptpmonkey.so"
install -v -m 644 files/pam/lib/librestgoose.so "${ROOTFS_DIR}/usr/local/lib/librestgoose.so"
install -v -m 644 files/pam/lib/libsapserver.so "${ROOTFS_DIR}/usr/local/lib/libsapserver.so"
install -v -m 644 files/pam/lib/generator/libLTCGenerator.so "${ROOTFS_DIR}/usr/local/lib/pam2/generator/libLTCGenerator.so"
install -v -m 644 files/pam/lib/generator/libnoiseGenerator.so "${ROOTFS_DIR}/usr/local/lib/pam2/generator/libnoiseGenerator.so"
install -v -m 644 files/pam/lib/monitor/libanglemeters.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libanglemeters.so"
install -v -m 644 files/pam/lib/monitor/libcorrelation.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libcorrelation.so"
install -v -m 644 files/pam/lib/monitor/libfft.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libfft.so"
install -v -m 644 files/pam/lib/monitor/libmeters.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libmeters.so"
install -v -m 644 files/pam/lib/monitor/libptp.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libptp.so"
install -v -m 644 files/pam/lib/monitor/libradar.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libradar.so"
install -v -m 644 files/pam/lib/monitor/libspectogram.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libspectogram.so"
install -v -m 644 files/pam/lib/monitor/libfftphase.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libfftphase.so"
install -v -m 644 files/pam/lib/monitor/liblissajou.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/liblissajou.so"
install -v -m 644 files/pam/lib/monitor/libpolarscope.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libpolarscope.so"
install -v -m 644 files/pam/lib/monitor/libr128.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libr128.so"
install -v -m 644 files/pam/lib/monitor/libscope.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libscope.so"
install -v -m 644 files/pam/lib/monitor/libwaveform.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libwaveform.so"
install -v -m 644 files/pam/lib/monitor/libanglemeters.so "${ROOTFS_DIR}/usr/local/lib/pam2/monitor/libanglemeters.so"
install -v -m 644 files/pam/lib/test/libcar.so "${ROOTFS_DIR}/usr/local/lib/pam2/test/libcar.so"
install -v -m 644 files/pam/lib/test/libchanneldelay.so "${ROOTFS_DIR}/usr/local/lib/pam2/test/libchanneldelay.so"
install -v -m 644 files/pam/lib/test/libdistortion.so "${ROOTFS_DIR}/usr/local/lib/pam2/test/libdistortion.so"
install -v -m 644 files/pam/lib/test/libidentify.so "${ROOTFS_DIR}/usr/local/lib/pam2/test/libidentify.so"
install -v -m 644 files/pam/lib/test/libInputAlign.so "${ROOTFS_DIR}/usr/local/lib/pam2/test/libInputAlign.so"
install -v -m 644 files/pam/lib/test/liblevels.so "${ROOTFS_DIR}/usr/local/lib/pam2/test/liblevels.so"
install -v -m 644 files/pam/lib/test/liblineup.so "${ROOTFS_DIR}/usr/local/lib/pam2/test/liblineup.so"
install -v -m 644 files/pam/lib/test/libLTC.so "${ROOTFS_DIR}/usr/local/lib/pam2/test/libLTC.so"
install -v -m 644 files/pam/lib/test/libpeakcount.so "${ROOTFS_DIR}/usr/local/lib/pam2/test/libpeakcount.so"
install -v -m 644 files/pam/lib/test/libpeaklog.so "${ROOTFS_DIR}/usr/local/lib/pam2/test/libpeaklog.so"
install -v -m 644 files/pam/lib/test/librecord.so "${ROOTFS_DIR}/usr/local/lib/pam2/test/librecord.so"

install -v -m 644 -o 1000 -g 1000 files/pam/documents/audio_hats.xml "${ROOTFS_DIR}/home/pam/pam/audio_hats.xml"
install -v -m 644 -o 1000 -g 1000 files/pam/documents/macaddress.xml "${ROOTFS_DIR}/home/pam/pam/macaddress.xml"
install -v -m 644 -o 1000 -g 1000 files/pam/documents/ppmtypes.xml "${ROOTFS_DIR}/home/pam/pam/ppmtypes.xml"
install -v -m 644 -o 1000 -g 1000 files/pam/documents/r128types.xml "${ROOTFS_DIR}/home/pam/pam/r128types.xml"
install -v -m 644 -o 1000 -g 1000 files/pam/documents/pam2.ini "${ROOTFS_DIR}/home/pam/pam/pam2.ini"
install -v -m 644 -o 1000 -g 1000 files/pam/documents/generator/glits.xml "${ROOTFS_DIR}/home/pam/pam/generator/glits.xml"
install -v -m 644 -o 1000 -g 1000 files/pam/documents/generator/blits.xml "${ROOTFS_DIR}/home/pam/pam/generator/blits.xml"

mkdir -p "${ROOTFS_DIR}/home/pam/pam/help"
cp -r files/pam/documents/help/* "${ROOTFS_DIR}/home/pam/pam/help"
chown -R 1000:1000 "${ROOTFS_DIR}/home/pam/pam/"


#store the image build date
date > "${ROOTFS_DIR}/opt/build"


on_chroot << EOF

#add user to netdev
adduser pam netdev

#disable sha1 hmac
echo '#Disable SHA1 HMAC algorithms for infosec' >> /etc/ssh/sshd_config
echo 'MACs -hmac-sha1*' >> /etc/ssh/sshd_config

#edit visudoers
echo "pam ALL=NOPASSWD:/usr/sbin/ntpd" >> /etc/sudoers
echo "pam ALL=NOPASSWD:/bin/mount" >> /etc/sudoers
echo "pam ALL=NOPASSWD:/bin/umount" >> /etc/sudoers
echo "pam ALL=NOPASSWD:/sbin/service" >> /etc/sudoers


#create mount point for updates
mkdir -p /mnt/share
chown pam /mnt/share

#get rid of login text
touch /home/pam/.hushlogin

#splash
echo "initramfs initramfs.img" >> /boot/config.txt

ldconfig


#syscap
#setcap cap_sys_time,cap_net_bind_service+ep /usr/local/bin/pam2


EOF


