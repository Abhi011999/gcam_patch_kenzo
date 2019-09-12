# Google Camera Patch for kenzo/kate
This module fixes some issues currently encountered on Redmi Note 3 and Redmi Note 3 Pro when using modified Google Camera Version 5.x and 6.x by replacing original cam libraries with modified one's.
It also enables some features not present in the system of custom ROMs.

## Working
Currently this module replaces libs/files in `/system/etc`, `/system/lib`, `/system/lib64`, `/system/usr`, `/system/vendor/lib`.

## Compatibility
This module is compatible with Android 8.0+ (All custom ROM's, not with stock).

## Current List of Patches
1. Enables 60 FPS video recording
2. Fixes green tint on front camera
3. Fixes lag/stutters in viewfinder
4. Enables fingerprint shutter for all cams (FP sensors supported - goodix and FPC)
5. 4k DCI Support
6. Increased Maximum ISO value - 12,800
7. Constant framerates when shooting videos
8. Improved Denoising for 30 fps videos


## Who did what ?
- [**SerJo87**](https://forum.xda-developers.com/member.php?u=5074663) and [**Kiraryu**](https://forum.xda-developers.com/member.php?u=8549930) modified the the initial libs that enable 60fps recording. (Currently not using the libs)
- [**Savitar(defcomg)**](https://forum.xda-developers.com/member.php?u=377973) edited the libs to increase maximum ISO and improve denoising.
- [**Kuro Shi**](https://t.me/Kuro_Shi_Sama) modified the libs that fix green tint.
- [**Ayush**](https://t.me/AyushR1) modified libs for lag fix.
- [**Amogha**](https://t.me/amog787) modified FP keylayout files for goodix/fpc.
- [**Krittin**](https://forum.xda-developers.com/member.php?u=5022949) provided 4k DCI support and additional info about libs, much thanks buddy.
- [**Abhishek**](https://t.me/BoogeyWoogey69) created the magisk module.

Huge thanks to everyone who helped to make this module possible !

## Special Thanks
[***topjohnwu***](https://github.com/topjohnwu) for [magisk](https://github.com/topjohnwu/Magisk) and official [template](https://github.com/topjohnwu/magisk-module-installer).

## Changelogs
### 1.2
- Added 4k DCI support
- Increased max ISO from 6400 to 12800
- 60 fps video recording now working in 6.3
- Improved Denoising
- Framerates are now constant when shooting videos
- Changes to media_profiles.xml

### 1.1
- Reverted primary camera vendor blobs back to stock MIUI. This enables stock video recording on snapcam and also works with GCam 6.X (Currently Tested).
- Added device check for kenzo and kate.
- Changes to media_profiles.xml

### 1.0
- Initial Release

