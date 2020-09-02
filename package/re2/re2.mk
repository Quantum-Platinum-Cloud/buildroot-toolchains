################################################################################
#
# re2
#
################################################################################

RE2_VERSION = 2020-08-01
RE2_SITE = $(call github,google,re2,$(RE2_VERSION))
RE2_LICENSE = BSD-3-Clause
RE2_LICENSE_FILES = LICENSE
RE2_INSTALL_STAGING = YES

RE2_CONF_OPTS += -DRE2_BUILD_TESTING=OFF
HOST_RE2_CONF_OPTS += -DRE2_BUILD_TESTING=OFF

$(eval $(cmake-package))
$(eval $(host-cmake-package))
