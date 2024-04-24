{
  lib,
  callPackage,
  fetchFromGitHub,
  makeRustPlatform,
}: let
  rust-bin =
    callPackage
    (fetchFromGitHub {
      owner = "nix-community";
      repo = "fenix";
      rev = "5c3ff469526a6ca54a887fbda9d67aef4dd4a921";
      hash = "sha256-3YQSEYvAIHE40tx5nM9dgeEe0gsHjf15+gurUpyDYNw=";
    })
    {};
  rustPlatform = makeRustPlatform {
    cargo = rust-bin.stable.cargo;
    rustc = rust-bin.stable.rustc;
  };
in
  rustPlatform.buildRustPackage rec {
    pname = "wofi-power-menu";
    version = "0.2.2";

    src = fetchFromGitHub {
      owner = "szaffarano";
      repo = pname;
      rev = "v${version}";
      sha256 = "sha256-KTgXiGTMuHs/h7fAM5KBwoed464sd2/2BM19I5LccVM=";
    };

    cargoSha256 = "sha256-9yctAwu4EUeISEaAoeHZsYTdnewMpIMlzoYalrnEJ9c=";

    meta = with lib; {
      description = "Highly configurable power menu using the wofi launcher power-menu ";
      homepage = "https://github.com/szaffarano/wofi-power-menu";
      license = with licenses; [mit];
      maintainers = with maintainers; [pborzenkov];
    };
  }
