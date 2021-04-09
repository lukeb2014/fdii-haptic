#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source;D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/kernel/tirtos/packages
override XDCROOT = D:/ti/ccs1020/xdctools_3_62_00_08_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source;D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/kernel/tirtos/packages;D:/ti/ccs1020/xdctools_3_62_00_08_core/packages;..
HOSTOS = Windows
endif
