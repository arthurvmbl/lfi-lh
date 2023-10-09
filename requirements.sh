#!/bin/bash

#Run as sudo!

#installing ffuf
wget https://github.com/ffuf/ffuf/releases/download/v2.1.0/ffuf_2.1.0_linux_amd64.tar.gz && tar -xf ffuf_2.1.0_linux_amd64.tar.gz && mv ffuf /bin && rm ffuf_2.1.0_linux_amd64.tar.gz

#wordlists in their respective paths
mkdir -p /usr/share/wordlists/SecLists/Discovery/Web-Content && mkdir -p /usr/share/wordlists/SecLists/Fuzzing/LFI
curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/burp-parameter-names.txt -o /usr/share/wordlists/SecLists/Discovery/Web-Content/burp-parameter-names.txt
curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/LFI/LFI-Jhaddix.txt -o /usr/share/wordlists/SecLists/Fuzzing/LFI/LFI-Jhaddix.txt
