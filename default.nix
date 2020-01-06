with (import <nixpkgs> {});
rec {
  weave-front-end = yarn2nix-moretea.mkYarnPackage {
    name = "zigbee2mqtt";
    src = ./.;
    packageJSON = ./package.json;
    yarnLock = ./yarn.lock;
    # NOTE: this is optional and generated dynamically if omitted
    yarnNix = ./yarn.nix;
  };
}
