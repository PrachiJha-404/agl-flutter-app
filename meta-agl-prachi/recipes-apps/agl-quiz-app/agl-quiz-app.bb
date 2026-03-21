SUMMARY = "AGL Quiz App - GSoC 2026 getting started quiz"
DESCRIPTION = "Flutter app showing AGL version, name, image and sound"
AUTHOR = "Prachi Jha <prachijha1805@gmail.com>"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRCREV = "${AUTOREV}"
SRC_URI = "git://github.com/PrachiJha-404/agl-flutter-app.git;protocol=https;branch=main"

S = "${WORKDIR}/git"

inherit flutter-app

FLUTTER_APPLICATION_PATH = "."
FLUTTER_BUILD_ARGS = "bundle"

FILES:${PN} += "/usr/share/flutter/agl-quiz-app"
PUBSPEC_IGNORE_LOCKFILE = "1"
PUBSPEC_APPNAME = "agl_quiz_app"