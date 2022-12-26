{
  description = "Scarf Flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/93dc85b485638bda9ac76458dcd45b997cc7cdbd";

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);
      nixpkgsFor = forAllSystems (system: import nixpkgs {
        inherit system;
        overlays = [ self.overlay ];
      });

    in
    rec
    {
      overlay = final: prev: { };
      packages = forAllSystems (system: { });
      devShells = forAllSystems (system:
        let
          pkgs = nixpkgsFor.${system};
          libs = with pkgs; [
            pcre
            rdkafka
            openssl
            postgresql
            zlib
          ];
        in
        {
          default = pkgs.mkShell {
            packages = [ ];
            buildInputs = with pkgs; [
              cabal-install
              haskell.compiler.ghc942
              ghcid
            ] ++ libs;
            shellHook = "export PS1='[$PWD]\n❄ '";
            LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath libs;
          };
        });
    };
}
