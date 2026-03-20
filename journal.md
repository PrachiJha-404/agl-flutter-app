# Build Journal

## Day 1 — Mar 17
- Set up GCP VM (Ubuntu 22.04, 200GB disk, us-central1)
- Installed Yocto dependencies
- Ran repo sync, configured aglsetup.sh with qemux86-64 + agl-demo + agl-flutter
- Started bitbake agl-ivi-demo-flutter — estimated 8hrs

## Day 2 — Mar 18
- Woke up to disk space error at 74% — Yocto needs >200GB
- Hit GCP SSD quota limit trying to expand disk in asia-south1
- Deleted VM, recreated in us-central1 with 400GB standard disk
- Restarted build — flutter-engine and clang took 1.5hrs each to compile
- Build hit 96% then stalled overnight on flutter-engine + clang

## Day 3 — Mar 19
- Woke up to successful build!
  `Tasks Summary: Attempted 12145 tasks of which 0 didn't need to be rerun and all succeeded.`
- Booted AGL 21.90.0 (vimba) in QEMU — first boot!
- Verified /etc/os-release contains version info Flutter app will read
- Set up Flutter locally on Ubuntu 22.04
- Default Flutter demo app running — ready to build quiz app
