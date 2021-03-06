{stdenv, fetchurl}:

stdenv.mkDerivation {
  name = "libdwg-0.3";

  src = fetchurl {
    url = mirror://sourceforge/libdwg/libdwg-0.3.tar.bz2;
    sha256 = "0lx7ih00m11qw9wsc5ksmwvi3d80l0yfwnbrn5qfz182w4d3fpc9";
  };

  meta = {
    description = "library reading dwg files";
    homepage = http://libdwg.sourceforge.net/en/;
    license = stdenv.lib.licenses.gpl3;
    maintainers = [stdenv.lib.maintainers.marcweber];
    platforms = stdenv.lib.platforms.linux;
  };
}
