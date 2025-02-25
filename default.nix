{
  stdenv,
  lib,
}:
stdenv.mkDerivation {
  pname = "Infinity-Glass";
  version = "0.3.6";

  src = ./.;

  dontDropIconThemeCache = true;
  dontCheckForBrokenSymlinks = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/
    cp -r $src/Infinity $out/share/icons/
    runHook postInstall
  '';

  meta = with lib; {
    description = "Glassmorph styled icon theme";
    homepage = "https://github.com/Rouzihiro/infinity-glass-icons";
    license = licenses.gpl3;
    platforms = platforms.all;
    maintainers = [
      rouzihiro
      gurjak
    ];
  };
}
