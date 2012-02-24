#!/bin/bash
# Split out, so build_kernel.sh and build_deb.sh can share..

echo "Starting patch.sh"

function git_add {
git add .
git commit -a -m 'testing patchset'
}

function bugs_trivial {
echo "bugs and trivial stuff"
}

function freescale {
echo "from freescale dump..."

#other options: http://opensource.freescale.com/git?p=imx/linux-2.6-imx.git;a=summary
#git pull http://opensource.freescale.com/pub/scm/imx/linux-2.6-imx.git imx_2.6.35_11.05.01

git pull git://github.com/RobertCNelson/linux-2.6.git imx_2.6.35_11.05.01

#Causes Serial Corruption Loco Board
patch -p1 -s < ${DIR}/patches/0001-Revert-ENGR00141363-ARM-imx53-clock-change-di0-clock.patch
}

bugs_trivial
freescale

echo "patch.sh ran successful"

