################################################################################
#
# mfoc
#
################################################################################

MFOC_VERSION = 0.10.7
MFOC_SITE = $(call github,nfc-tools,mfoc,mfoc-$(MFOC_VERSION))
MFOC_LICENSE = GPL-2.0
MFOC_LICENSE_FILES = COPYING
MFOC_DEPENDENCIES = libnfc
# Fetching from github, we need to generate the configure script
MFOC_AUTORECONF = YES
MFOC_INSTALL_STAGING = YES

# Autoreconf requires an existing m4 directory
define MFOC_MKDIR_M4
	mkdir -p $(@D)/m4
endef
MFOC_PRE_CONFIGURE_HOOKS += MFOC_MKDIR_M4

$(eval $(autotools-package))
