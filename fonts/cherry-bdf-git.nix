{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
    name = "cherry";
    version = "git";

    src = fetchFromGitHub {
      owner = "turquoise-hexagon";
      repo = name;
      rev = "1021631a26e95010700d8df8d87f89c1cc75e300";
      sha256 = "1wzw784775c36j21q3qr9lkg3anb27v4ldzbb77ylfvr66yf092r";
    };

    dontBuild = true;

    installPhase = ''
      mkdir -p $out/share/fonts
      cp *.bdf $out/share/fonts
    '';
}
