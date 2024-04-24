{ pkgs ? import <nixpkgs> {} }:
  pkgs.callPackage ./vtm.nix {}
