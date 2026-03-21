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
- Built Flutter quiz app: AGL version display, name, image button, sound button
- Fixed snap Flutter linker issues, switched to git Flutter
- App working on Ubuntu desktop — pushed to GitHub

## Day 4 — Mar 20
- Created meta-agl-prachi Yocto layer with agl-quiz-app recipe
- Hit pubspec.lock SDK version mismatch (Dart 3.10.1 vs 3.11.3)
- Fixed with PUBSPEC_IGNORE_LOCKFILE = "1" after reading common.inc source
- App recipe built successfully
- Added to AGL image via IMAGE_INSTALL:append
- Full image rebuild succeeded — app baked in

## Day 5 — Mar 21
- Set up VNC to see AGL graphical output (opened GCP firewall port 5901)
- Fixed weston.ini: removed rotate-90 transform, added vnc backend
- App launching via flutter-auto with correct Wayland environment
- "AGL Quiz App" title visible in AGL alongside homescreen
- App renders fullscreen (1920x720) with LIBGL_ALWAYS_SOFTWARE=1
- Stuck on: AGL warning screen needs dismissal, no .desktop file for applaunchd
- Next: add appinfo.json/.desktop file to recipe for proper app launch integration
