[Defines]
  PLATFORM_NAME                  = x00qd
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/sdm636/sdm636.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/Xiaomi/sdm636/x00qd.fdf.inc

!include Platform/Qualcomm/sdm660/sdm660.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DXIAOMI_PIL_FIXED=1 -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE

[PcdsFixedAtBuild.common]
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|2246

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|460

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Asus"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Zenfone 5"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"x00qd"
