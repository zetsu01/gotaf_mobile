import 'package:flutter_svg/svg.dart';

SvgPicture svgParser(String urlSvg, String label) {
  return SvgPicture.asset(urlSvg, semanticsLabel: label);
}
