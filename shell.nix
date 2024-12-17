{ pkgs ? import <nixpkgs> {}}:
pkgs.mkShell rec {
  buildInputs = with pkgs; [
  poetry
  ffmpeg
  libGL
    glib
    zlib
    python3
  ];
  LD_LIBRARY_PATH = with pkgs; lib.makeLibraryPath [
    stdenv.cc.cc
    libGL
    zlib
    glib # libgthread-2.0.so
   dbus # libdbus-1.so
    libxkbcommon # libxkbcommon-x11.so
  ];
}
