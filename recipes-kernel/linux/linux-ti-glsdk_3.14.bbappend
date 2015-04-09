#inherit kernel
#require recipes-kernel/linux/linux-yocto.inc


COMPATIBLE_MACHINE_dra7xx-evm = "dra7xx-evm"

BRANCH = "sandbox/vitaly2014/kernel-x86-ivi/p-ti-linux-3.14.y-glsdk-tizen-wo-drm-pci"

SRCREV="${AUTOREV}"

FILESEXTRAPATHS_prepend := "${THISDIR}/linux-ti-glsdk:"

###
KERNEL_GIT_URI = "git://review.tizen.org/profile/ivi/kernel-x86-ivi"
KERNEL_GIT_PROTOCOL = "ssh"
SRC_URI = "${KERNEL_GIT_URI};protocol=${KERNEL_GIT_PROTOCOL};branch=${BRANCH}; \
           file://defconfig \
          "
