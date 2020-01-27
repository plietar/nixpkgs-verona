{ fetchFromGitHub, stdenv, cmake, python3 }:
stdenv.mkDerivation {
  name = "veronac";
  src = fetchFromGitHub {
    owner = "microsoft";
    repo = "verona";
    rev = "5ad39dbb9f53bbd08c1e6f7c87bbad9f0a439d71";
    sha256 = "056a62z5ljas5sd83bnfgk2xhps5n2bvn2b1p4fpwmzyzbwnhg2k";
    fetchSubmodules = true;
  };
  buildInputs = [ cmake python3 ];
  cmakeFlags = [
    "-DCMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT=NO"
  ];
  patches = [ ./veronac-install-path.diff ];
}
