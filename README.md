# Google Camera Patch for kenzo/kate
This module fixes some issues currently encountered on Redmi Note 3 and Redmi Note 3 Pro when using modified Google Camera Version 5.x and 6.x by replacing original cam libraries with modified one's.
It also enables some features not present in the system of custom ROMs.

## Working
Currently this module replaces libs/files in `/system/etc`, `/system/lib`, `/system/lib64`, `/system/usr`, `/system/vendor/lib`.

## Compatibility
This module is compatible with Android 8.0+ (All custom ROM's, not with stock).

## Current List of Patches
1. Enables 60 FPS video recording (currently not working in some variants of 6.3)
2. Fixes green tint on front camera
3. Fixes lag/stutters in viewfinder
4. Enables fingerprint shutter for all cams (FP sensors supported - goodix and FPC)

## Who did what ?
- [**SerJo87**](https://forum.xda-developers.com/member.php?u=5074663) modified the libs that enables 60fps recording.
- [**Kuro Shi**](https://t.me/Kuro_Shi_Sama) modified the libs that fix green tint.
- [**Ayush**](https://t.me/AyushR1) modified libs for lag fix.
- [**Amogha**](https://t.me/amog787) modified FP keylayout files for goodix/fpc.
- [**Abhishek**](https://t.me/BoogeyWoogey69) created the magisk module.

Huge thanks to everyone who helped to make this module possible !

## Special Thanks
[***Zackptg5***](https://github.com/Zackptg5) and [***topjohnwu***](https://github.com/topjohnwu) for the template.

## Changelogs
### 1.0
- Initial Release
