# AGL GSoC 2026 Quiz — Prachi Jha

Getting started quiz for AGL GSoC 2026, Task #2: System Health Observability (eBPF).

## What this repo contains
- Flutter app displaying AGL version, name, and two interactive buttons
- Yocto layer and recipe to package the app into an AGL image

## Progress
- [x] Built AGL master branch image from source using Yocto
- [x] Booted AGL 21.90.0 (vimba) in QEMU emulator
- [x] Flutter quiz app
- [x] Yocto recipe
- [x] Rebuild AGL image with app included
- [x] Video recording

## Setup
Built on GCP e2-standard-8, Ubuntu 22.04, 400GB disk.
AGL image: agl-ivi-demo-flutter, target: qemux86-64
