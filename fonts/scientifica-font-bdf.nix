{ stdenv, fetchzip }:

let
    version = "git-master";
in fetchzip rec {
    name = "scientifica-font-bdf-${version}";

    url = "https://github.com/NerdyPepper/scientifica/archive/master.zip";

    postFetch = ''
      mkdir -p $out/share/fonts
      unzip -j $downloadedFile \*.bdf -d $out/share/fonts
    '';

    sha256 = "1cqghv4v1smm16s3xi6mhfqa316bg7qnwas7m44wkjxxhv6wzxb4";
}
