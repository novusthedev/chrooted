#!/bin/bash

ver=("1.1.1")

echo "Packaging the build..."
tar -czf chrooted-$ver.tar.gz chrooted-bin/
echo "Packaging done!"