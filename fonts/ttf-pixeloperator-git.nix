{ stdenv, git }:

stdenv.mkDerivation rec {
    name = "ttf-pixeloperator";
    version = "git";

    src = builtins.fetchGit {
      url = "https://notabug.org/HarvettFox96/ttf-pixeloperator.git";
      rev = "496045526d00b66e37ca11762c446b7423145822";
    };
    
    dontBuild = true;

    installPhase = ''
      mkdir -p $out/share/fonts/TTF
      cp */*.ttf $out/share/fonts/TTF
    '';
}
