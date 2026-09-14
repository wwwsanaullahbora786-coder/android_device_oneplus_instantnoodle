# device_oneplus_instantnoodle — twrp-13 branch

Standalone TWRP/OrangeFox-buildable recovery device tree for OnePlus 8 /
OnePlus 8 Pro (kona, `instantnoodle`/`instantnoodlep`). This branch is
independent of `lineage-23.2` — it targets a minimal TWRP/OrangeFox
manifest, not the full ROM manifest, so it does not depend on.
`device/oneplus/sm8250-common`.

## Provenance
- Base recovery ramdisk, BoardConfig, and product config ported from
  [TeamWin/android_device_oneplus_instantnoodle](https://github.com/TeamWin/android_device_oneplus_instantnoodle)
  (`android-13` branch), which is itself already configured as an
  OrangeFox build (see `vendorsetup.sh`) unified across
  instantnoodle/instantnoodlep/OnePlus8T/OnePlus9R via
  `recovery/root/system/bin/unified-script.sh`, which resets
  `ro.product.*` at boot based on `ro.boot.prj_version`.
- `recovery.fstab` corrected: `vendor`/`odm` changed from `ext4` to
  `erofs` to match this device's actual current stock `fstab.qcom`.
- `system.prop` and `twrp_instantnoodle.mk`: `ro.display.series` and
  `PRODUCT_MODEL` corrected from the reference's `OnePlus 8Pro`/`IN2013`
  to `OnePlus 8`/`IN2015` to match this repo's actual stock variant.

## Known caveats — please verify before flashing
- `prebuilt/Image`, `prebuilt/dtb.img`, `prebuilt/dtbo.img`, and the
  `.so`/`.bin` blobs under `recovery/root/vendor/` are carried over
  from the TeamWin reference as a starting baseline. They were not
  re-extracted from this device's current stock firmware. If your
  bootloader/firmware has moved on since that reference was made,
  regenerate these from your own latest stock boot/dtbo images before
  relying on this for real device use.
- The SENSEIIIII `twrp_device_OnePlus_instantnoodlep` repo referenced
  alongside TeamWin's turned out not to contain any recovery-specific
  source (single `A14` branch, no `recovery/` tree) — it's a regular
  ROM device tree, so it wasn't used as a source for this branch.
