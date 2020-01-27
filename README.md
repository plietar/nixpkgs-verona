# Nixpkgs overlay for the Verona compiler
## Usage as an overlay
```bash
mkdir -p ~/.config/nixpkgs/overlays
git clone https://github.com/plietar/nixpkgs-verona ~/.config/nixpkgs/overlays/verona
nix-env -iA nixpkgs.veronac
veronac --help
```

## Standalone usage 
Clone this repository and run the following commands:
```bash
nix-build -E '(import <nixpkgs> {}).callPackage ./veronac.nix {}'
./result/bin/veronac --help
```
