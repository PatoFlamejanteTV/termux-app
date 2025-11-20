#!/bin/bash
if [ ! -f ~/.xfce_installed ]; then
    curl -sL https://raw.githubusercontent.com/PatoFlamejanteTV/Termux_XFCE/main/install_xfce_native.sh -o ~/install.sh
    echo "423bd333c746d3d751544878035b89f3e433f2bb511988fe4dd48ee0bb77c61e  ~/install.sh" | sha256sum -c -
    if [ $? -eq 0 ]; then
        bash ~/install.sh
        touch ~/.xfce_installed
    else
        echo "Checksum verification failed. The installation script will not be executed."
    fi
fi
