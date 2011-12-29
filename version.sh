#!/bin/bash

unset BUILD

KERNEL_REL=3.1

#for x.x.X
#STABLE_PATCH=1

#for x.x-gitX
#PRE_SNAP=v2.9
#PRE_RC=2.6.38-git20

#for x.x-rcX
RC_KERNEL=3.2
RC_PATCH=-rc7

ABI=0

BUILD=imx${ABI}

BUILDREV=1.0
DISTRO=cross
DEBARCH=armel

export KERNEL_REL STABLE_PATCH RC_KERNEL RC_PATCH PRE_SNAP PRE_RC BUILD
export BUILDREV DISTRO DEBARCH ABI
