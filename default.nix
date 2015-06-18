{ mkDerivation,  transformers, binary,
    containers, bytestring,
    base64-bytestring, text, tagged-binary
}:

mkDerivation {
  pname = "ghcjs-websockets";
  version = "0.1";
  src = builtins.filterSource (path: type: baseNameOf path != ".git") ./.;
  buildDepends = [
    transformers
    binary
    containers
    bytestring
    base64-bytestring
    text
    tagged-binary
  ];
  license = null;
}

