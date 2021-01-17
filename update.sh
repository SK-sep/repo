#!/bin/bash
#./remove.sh
#./packages.sh
#./push.sh
rm -r Packages.bz2
#dpkg-deb -bZgzip projects/Fall\ Leaves debs
dpkg-scanpackages ./debs > Packages
bzip2 -fks Packages
