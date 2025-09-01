#!/bin/bash
echo "Creating folder structure..."
mkdir -p build/mnt/mmc/MUOS/application/'Fantasy Downloader'
mkdir -p build/opt/muos/default/MUOS/theme/active/glyph/muxapp

echo "Copying app files..."
cp -r package/bin/ build/mnt/mmc/MUOS/application/'Fantasy Downloader'
cp app/* build/mnt/mmc/MUOS/application/'Fantasy Downloader'
cp package/mux_launch.sh build/mnt/mmc/MUOS/application/'Fantasy Downloader'

echo "Copying app icon..."
cp fantasy-downloader.png build/opt/muos/default/MUOS/theme/active/glyph/muxapp

echo "Archiving package..."
cd build && zip -r ../fantasy-downloader.muxzip mnt opt >> /dev/null

echo "Removing build folder..."
cd .. && rm -rf build
echo "Done"
