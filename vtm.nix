{ lib, stdenv, cmake, libtorch-bin }:

stdenv.mkDerivation {
  pname = "vtm";
  version = "22.2";
  src = ./.;
  nativeBuildInputs = [ cmake libtorch-bin ];
  # Enable VTM debug features
  cmakeFlags = [
    "-DENABLE_TRACING=1"
    "-DK0149_BLOCK_STATISTICS=1"
  ];
  installPhase = ''
    mkdir -p $out/bin
    cp $(find ../bin -type f) $out/bin
  '';
}
