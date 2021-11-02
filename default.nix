{ pkgs ? import <nixpkgs> { } }:

rec {
  modules = import ./modules;

  osccopy = pkgs.callPackage ./pkgs/osccopy { };
  tg-bot-skyeng = pkgs.callPackage ./pkgs/tg-bot-skyeng { };
  vlmcsd = pkgs.callPackage ./pkgs/vlmcsd { };
}
