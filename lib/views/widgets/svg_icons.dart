import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rehab_app/model/constants.dart';

final Widget arrowSvg = SvgPicture.asset(
  arrowPath,
  color: Colors.blue,
);
final Widget tickSvg = SvgPicture.asset(
  tickPath,
  color: const Color(0xffa3d066),
);
final Widget hourglassSvg = SvgPicture.asset(
  hourglassPath,
);
final Widget dumbellSvg = SvgPicture.asset(
  dumbellPath,
);
