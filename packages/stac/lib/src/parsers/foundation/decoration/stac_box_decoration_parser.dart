import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_radius_parser.dart';
import 'package:stac/src/parsers/foundation/colors/stac_blend_mode_parser.dart';
import 'package:stac/src/parsers/foundation/decoration/stac_decoration_image/stac_decoration_image_parser.dart';
import 'package:stac/src/parsers/foundation/effects/stac_gradient_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_box_shadow_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_box_shape_parser.dart';
import 'package:stac/stac.dart';
import 'package:stac_core/foundation/decoration/stac_box_decoration/stac_box_decoration.dart';

extension StacBoxDecorationParser on StacBoxDecoration {
  BoxDecoration? parse(BuildContext context) {
    return BoxDecoration(
      color: color?.toColor(context),
      image: image?.parse, // Todo
      border: border?.parse(context),
      borderRadius: borderRadius?.parse,
      boxShadow: boxShadow?.map((e) => e.parse(context)).toList() ?? [],
      gradient: gradient?.parse(context),
      backgroundBlendMode: backgroundBlendMode?.parse,
      shape: shape?.parse ?? BoxShape.rectangle,
    );
  }
}
