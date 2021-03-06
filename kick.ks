## kickstart file

    keyboard fi
    lang en_US.UTF-8
    timezone --utc Europe/Helsinki
    zerombr
    install
    reboot

    ignoredisk --only-use=vda
    clearpart --drive=vda --initlabel
    part /boot --asprimary --fstype="ext4" --size=200
    part swap --size=2000
    part / --size=1 --fstype="ext4" --grow
    bootloader --location=mbr --driveorder=sda --append="elevator=deadline"
    
    %packages
    @core
    @base
    %end
