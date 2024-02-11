# flake.nix

{
  description = "Configuration CLI tool with Pkl on NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        jpklUrl = "https://repo1.maven.org/maven2/org/pkl-lang/pkl-cli-java/0.25.2/pkl-cli-java-0.25.2.jar";
        jpklPath = ./jpkl;
      in pkgs.mkShell {
        buildInputs = [
          pkgs.jdk  # Add JDK as a dependency
        ];

        shellHook = ''
          # Download jpkl only if it doesn't exist
          if [ ! -e $jpklPath ]; then
            curl -L -o $jpklPath $jpklUrl
            chmod +x $jpklPath
          fi
          
          export PATH="$PWD:$PATH"  # Add the current directory to the PATH
          echo "Entering the development environment!"
        '';
      };

    devShells = rec {
      default = self.devShell.x86_64-linux;
    };
  };
}
