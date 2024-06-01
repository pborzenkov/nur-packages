{pkgs ? import <nixpkgs> {}}: {
  modules = import ./modules;

  authelia = pkgs.callPackage ./pkgs/authelia {};
  autobrr = pkgs.callPackage ./pkgs/autobrr {};
  firefox-addons = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/firefox-addons {});
  koreader-syncd = pkgs.callPackage ./pkgs/koreader-syncd {};
  orpheusbetter-crawler = pkgs.callPackage ./pkgs/orpheusbetter-crawler {};
  osccopy = pkgs.callPackage ./pkgs/osccopy {};
  tg-bot-skyeng = pkgs.callPackage ./pkgs/tg-bot-skyeng {};
  tg-bot-transmission = pkgs.callPackage ./pkgs/tg-bot-transmission {};
  transmission-exporter = pkgs.callPackage ./pkgs/transmission-exporter {};
  vlmcsd = pkgs.callPackage ./pkgs/vlmcsd {};
  wofi-power-menu = pkgs.callPackage ./pkgs/wofi-power-menu {};
}
