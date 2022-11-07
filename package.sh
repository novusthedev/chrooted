#!/bin/bash

ver=("1.3")

echo "Packaging the build..."
tar -czf chrooted-$ver.tar.gz chrooted-bin/
echo "Packaging done!"