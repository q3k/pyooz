with import <nixpkgs> {};

with python38Packages;

buildPythonPackage {
  pname = "pyooz";
  version = "1.0";

  nativeBuildInputs = with pkgs; [ cython ];

  src = ./.;
}
