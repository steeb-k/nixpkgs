{ buildDunePackage, ocaml_gettext, dune-configurator, ounit }:

buildDunePackage rec {

  pname = "gettext-stub";

  inherit (ocaml_gettext) src version;

  minimalOCamlVersion = "4.06";

  buildInputs = [ dune-configurator ];

  propagatedBuildInputs = [ ocaml_gettext ];

  doCheck = true;

  checkInputs = [ ounit ];

  meta = builtins.removeAttrs ocaml_gettext.meta  [ "mainProgram" ];
}
