#!/bin/sh

AneVersion="0.0.8"
FreSwiftVersion="2.5.0"

rm -r tvos_dependencies/device
rm -r tvos_dependencies/simulator

wget https://github.com/tuarua/Swift-IOS-ANE/releases/download/$FreSwiftVersion/tvos_dependencies.zip
unzip -u -o tvos_dependencies.zip
rm tvos_dependencies.zip

wget https://github.com/tuarua/ML-ANE/releases/download/$AneVersion/tvos_dependencies.zip
unzip -u -o tvos_dependencies.zip
rm tvos_dependencies.zip

wget -O ../native_extension/ane/MLANE.ane https://github.com/tuarua/ML-ANE/releases/download/$AneVersion/MLANE.ane?raw=true
