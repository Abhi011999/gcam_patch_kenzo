SKIPMOUNT=false

PROPFILE=false

POSTFSDATA=false

LATESTARTSERVICE=false

REPLACE="
"

print_modname() {
  ui_print "-----------------------------------------------"
  ui_print "           GCam Patch for kenzo/kate       V1.0"
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
  ui_print "~ Extracting module files ...                  "
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  ui_print "~ Done Extracting ...                          "
  ui_print "-----------------------------------------------"
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
