{ pkgs ? import <nixpkgs> { } }:

rec {
  modules = import ./modules;

  authelia = pkgs.callPackage ./pkgs/authelia { };
  osccopy = pkgs.callPackage ./pkgs/osccopy { };
  tg-bot-skyeng = pkgs.callPackage ./pkgs/tg-bot-skyeng { };
  tg-bot-transmission = pkgs.callPackage ./pkgs/tg-bot-transmission { };
  transmission-exporter = pkgs.callPackage ./pkgs/transmission-exporter { };
  vlmcsd = pkgs.callPackage ./pkgs/vlmcsd { };
}
