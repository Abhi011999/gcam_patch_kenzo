SKIPMOUNT=false

PROPFILE=false

POSTFSDATA=false

LATESTARTSERVICE=false

REPLACE="
"

print_modname() {
  ui_print "-----------------------------------------------"
  ui_print "           GCam Patch for kenzo/kate       V1.1"
  ui_print "              By @BoogeyWoogey69               "
  ui_print "    Major thanks to SerJo87 , Kuro Shi and     "
  ui_print "                Ayush Rathore                  "
  ui_print "-----------------------------------------------"
  ui_print " "
  ui_print "~ List of patches -                            "
  ui_print "1. 60 FPS video recording                 (1.0)"
  ui_print "2. Green tint fix for front cam           (1.0)"
  ui_print "3. Viewfinder lag fix                     (1.0)"
  ui_print "4. Fingerprint Shutter for fpc/goodix     (1.0)"
  ui_print " "
}

on_install() {
  ui_print " "
  ui_print "~ Verifying Device ...                         "
  custom_variables()
  device_check()
  ui_print "~ Extracting module files ...                  "
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  ui_print "~ Done Extracting ...                          "
  ui_print "-----------------------------------------------"
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}

custom_variables() {
  if [ -f vendor/build.prop ]; then device="/system/build.prop vendor/build.prop"; else device="/system/build.prop"; fi
    kenzo=$(grep -E "ro.product.device=kenzo|ro.build.product=kenzo" $device)
    kate=$(grep -E "ro.product.device=kate|ro.build.product=kate" $device)
}

device_check() {
  if [ -n "$kenzo" ] || [ -n "$kate" ]; then
    return 0
  else
    abort "Your device is not kenzo/kate or you are using a modified build.prop"
  fi
}
