[Defines]
  PLATFORM_NAME                  = mata
  VENDOR_NAME                    = Essential
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/msm8998/msm8998.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/Essential/msm8998/mata.fdf.inc

!include Platform/Qualcomm/msm8998/msm8998.dsc

[BuildOptions.common]

  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE

[PcdsFixedAtBuild.common]

  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|1440
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|2560

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|440

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Essential"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"mata"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"mata"
