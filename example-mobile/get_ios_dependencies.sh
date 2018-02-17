#!/bin/sh

wget https://github.com/tuarua/Swift-IOS-ANE/releases/download/2.2.0/ios_dependencies.zip
unzip -u -o ios_dependencies.zip
rm ios_dependencies.zip

wget https://github.com/tuarua/ML-ANE/releases/download/0.0.2/ios_dependencies.zip
unzip -u -o ios_dependencies.zip
rm ios_dependencies.zip


wget -O ../native_extension/ane/MLANE.ane https://github.com/tuarua/ML-ANE/releases/download/0.0.2/MLANE.ane?raw=true
