import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_models/types/stac_alignment.dart';
import 'package:stac_models/types/stac_alignment_directional.dart';
import 'package:stac_models/types/stac_blend_mode.dart';
import 'package:stac_models/types/stac_blur_style.dart';
import 'package:stac_models/types/stac_border/stac_border.dart';
import 'package:stac_models/types/stac_border_radius/stac_border_radius.dart';
import 'package:stac_models/types/stac_border_side/stac_border_side.dart';
import 'package:stac_models/types/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_models/types/stac_box_fit.dart';
import 'package:stac_models/types/stac_box_shadow/stac_box_shadow.dart';
import 'package:stac_models/types/stac_box_shape.dart';
import 'package:stac_models/types/stac_clip.dart';
import 'package:stac_models/types/stac_double.dart';
import 'package:stac_models/types/stac_drag_start_behavior.dart';
import 'package:stac_models/types/stac_filter_quality.dart';
import 'package:stac_models/types/stac_floating_action_button_location.dart';
import 'package:stac_models/types/stac_gradient/stac_gradient.dart';
import 'package:stac_models/types/stac_image_repeat.dart';
import 'package:stac_models/types/stac_offset/stac_offset.dart';
import 'package:stac_models/types/stac_rect/stac_rect.dart';
import 'package:stac_models/types/stac_text_types.dart';

extension StacFloatingActionButtonLocationParser
    on StacFloatingActionButtonLocation {
  FloatingActionButtonLocation get parse {
    switch (this) {
      case StacFloatingActionButtonLocation.startTop:
        return FloatingActionButtonLocation.startTop;
      case StacFloatingActionButtonLocation.miniStartTop:
        return FloatingActionButtonLocation.miniStartTop;
      case StacFloatingActionButtonLocation.centerTop:
        return FloatingActionButtonLocation.centerTop;
      case StacFloatingActionButtonLocation.miniCenterTop:
        return FloatingActionButtonLocation.miniCenterTop;
      case StacFloatingActionButtonLocation.endTop:
        return FloatingActionButtonLocation.endTop;
      case StacFloatingActionButtonLocation.miniEndTop:
        return FloatingActionButtonLocation.miniEndTop;
      case StacFloatingActionButtonLocation.startFloat:
        return FloatingActionButtonLocation.startFloat;
      case StacFloatingActionButtonLocation.miniStartFloat:
        return FloatingActionButtonLocation.miniStartFloat;
      case StacFloatingActionButtonLocation.centerFloat:
        return FloatingActionButtonLocation.centerFloat;
      case StacFloatingActionButtonLocation.miniCenterFloat:
        return FloatingActionButtonLocation.miniCenterFloat;
      case StacFloatingActionButtonLocation.endFloat:
        return FloatingActionButtonLocation.endFloat;
      case StacFloatingActionButtonLocation.miniEndFloat:
        return FloatingActionButtonLocation.miniEndFloat;
      case StacFloatingActionButtonLocation.startDocked:
        return FloatingActionButtonLocation.startDocked;
      case StacFloatingActionButtonLocation.miniStartDocked:
        return FloatingActionButtonLocation.miniStartDocked;
      case StacFloatingActionButtonLocation.centerDocked:
        return FloatingActionButtonLocation.centerDocked;
      case StacFloatingActionButtonLocation.miniCenterDocked:
        return FloatingActionButtonLocation.miniCenterDocked;
      case StacFloatingActionButtonLocation.endDocked:
        return FloatingActionButtonLocation.endDocked;
      case StacFloatingActionButtonLocation.miniEndDocked:
        return FloatingActionButtonLocation.miniEndDocked;
    }
  }
}

extension StacAlignmentDirectionalParser on StacAlignmentDirectional {
  AlignmentDirectional get parse {
    switch (this) {
      case StacAlignmentDirectional.topStart:
        return AlignmentDirectional.topStart;
      case StacAlignmentDirectional.topCenter:
        return AlignmentDirectional.topCenter;
      case StacAlignmentDirectional.topEnd:
        return AlignmentDirectional.topEnd;
      case StacAlignmentDirectional.centerStart:
        return AlignmentDirectional.centerStart;
      case StacAlignmentDirectional.center:
        return AlignmentDirectional.center;
      case StacAlignmentDirectional.centerEnd:
        return AlignmentDirectional.centerEnd;
      case StacAlignmentDirectional.bottomStart:
        return AlignmentDirectional.bottomStart;
      case StacAlignmentDirectional.bottomCenter:
        return AlignmentDirectional.bottomCenter;
      case StacAlignmentDirectional.bottomEnd:
        return AlignmentDirectional.bottomEnd;
    }
  }
}

extension StacDragStartBehaviorParser on StacDragStartBehavior {
  DragStartBehavior get parse {
    switch (this) {
      case StacDragStartBehavior.down:
        return DragStartBehavior.down;
      case StacDragStartBehavior.start:
        return DragStartBehavior.start;
    }
  }
}

extension StacTextOverflowParser on StacTextOverflow {
  TextOverflow get parse {
    switch (this) {
      case StacTextOverflow.clip:
        return TextOverflow.clip;
      case StacTextOverflow.fade:
        return TextOverflow.fade;
      case StacTextOverflow.ellipsis:
        return TextOverflow.ellipsis;
      case StacTextOverflow.visible:
        return TextOverflow.visible;
    }
  }
}

extension StacTextDecorationStyleParser on StacTextDecorationStyle {
  TextDecorationStyle get parse {
    switch (this) {
      case StacTextDecorationStyle.solid:
        return TextDecorationStyle.solid;
      case StacTextDecorationStyle.double:
        return TextDecorationStyle.double;
      case StacTextDecorationStyle.dotted:
        return TextDecorationStyle.dotted;
      case StacTextDecorationStyle.dashed:
        return TextDecorationStyle.dashed;
      case StacTextDecorationStyle.wavy:
        return TextDecorationStyle.wavy;
    }
  }
}

extension StacTextLeadingDistributionParser on StacTextLeadingDistribution {
  TextLeadingDistribution get parse {
    switch (this) {
      case StacTextLeadingDistribution.proportional:
        return TextLeadingDistribution.proportional;
      case StacTextLeadingDistribution.even:
        return TextLeadingDistribution.even;
    }
  }
}

extension StacTextAlignParser on StacTextAlign {
  TextAlign get parse {
    switch (this) {
      case StacTextAlign.left:
        return TextAlign.left;
      case StacTextAlign.right:
        return TextAlign.right;
      case StacTextAlign.center:
        return TextAlign.center;
      case StacTextAlign.justify:
        return TextAlign.justify;
      case StacTextAlign.start:
        return TextAlign.start;
      case StacTextAlign.end:
        return TextAlign.end;
    }
  }
}

extension StacTextDirectionParser on StacTextDirection {
  TextDirection get parse {
    switch (this) {
      case StacTextDirection.rtl:
        return TextDirection.rtl;
      case StacTextDirection.ltr:
        return TextDirection.ltr;
    }
  }
}

extension StacTextWidthBasisParser on StacTextWidthBasis {
  TextWidthBasis get parse {
    switch (this) {
      case StacTextWidthBasis.parent:
        return TextWidthBasis.parent;
      case StacTextWidthBasis.longestLine:
        return TextWidthBasis.longestLine;
    }
  }
}

extension StacAlignmentParser on StacAlignment {
  Alignment get parse {
    switch (this) {
      case StacAlignment.topLeft:
        return Alignment.topLeft;
      case StacAlignment.topCenter:
        return Alignment.topCenter;
      case StacAlignment.topRight:
        return Alignment.topRight;
      case StacAlignment.centerLeft:
        return Alignment.centerLeft;
      case StacAlignment.center:
        return Alignment.center;
      case StacAlignment.centerRight:
        return Alignment.centerRight;
      case StacAlignment.bottomLeft:
        return Alignment.bottomLeft;
      case StacAlignment.bottomCenter:
        return Alignment.bottomCenter;
      case StacAlignment.bottomRight:
        return Alignment.bottomRight;
    }
  }
}

extension StacClipParser on StacClip {
  Clip get parse {
    switch (this) {
      case StacClip.none:
        return Clip.none;
      case StacClip.hardEdge:
        return Clip.hardEdge;
      case StacClip.antiAlias:
        return Clip.antiAlias;
      case StacClip.antiAliasWithSaveLayer:
        return Clip.antiAliasWithSaveLayer;
    }
  }
}

extension StacBlendModeParser on StacBlendMode {
  BlendMode get parse {
    switch (this) {
      case StacBlendMode.clear:
        return BlendMode.clear;
      case StacBlendMode.src:
        return BlendMode.src;
      case StacBlendMode.dst:
        return BlendMode.dst;
      case StacBlendMode.srcOver:
        return BlendMode.srcOver;
      case StacBlendMode.dstOver:
        return BlendMode.dstOver;
      case StacBlendMode.srcIn:
        return BlendMode.srcIn;
      case StacBlendMode.dstIn:
        return BlendMode.dstIn;
      case StacBlendMode.srcOut:
        return BlendMode.srcOut;
      case StacBlendMode.dstOut:
        return BlendMode.dstOut;
      case StacBlendMode.srcATop:
        return BlendMode.srcATop;
      case StacBlendMode.dstATop:
        return BlendMode.dstATop;
      case StacBlendMode.xor:
        return BlendMode.xor;
      case StacBlendMode.plus:
        return BlendMode.plus;
      case StacBlendMode.modulate:
        return BlendMode.modulate;
      case StacBlendMode.screen:
        return BlendMode.screen;
      case StacBlendMode.overlay:
        return BlendMode.overlay;
      case StacBlendMode.darken:
        return BlendMode.darken;
      case StacBlendMode.lighten:
        return BlendMode.lighten;
      case StacBlendMode.colorDodge:
        return BlendMode.colorDodge;
      case StacBlendMode.colorBurn:
        return BlendMode.colorBurn;
      case StacBlendMode.hardLight:
        return BlendMode.hardLight;
      case StacBlendMode.softLight:
        return BlendMode.softLight;
      case StacBlendMode.difference:
        return BlendMode.difference;
      case StacBlendMode.exclusion:
        return BlendMode.exclusion;
      case StacBlendMode.multiply:
        return BlendMode.multiply;
      case StacBlendMode.hue:
        return BlendMode.hue;
      case StacBlendMode.saturation:
        return BlendMode.saturation;
      case StacBlendMode.color:
        return BlendMode.color;
      case StacBlendMode.luminosity:
        return BlendMode.luminosity;
    }
  }
}

extension StacBoxFitParser on StacBoxFit {
  BoxFit get parse {
    switch (this) {
      case StacBoxFit.fill:
        return BoxFit.fill;
      case StacBoxFit.contain:
        return BoxFit.contain;
      case StacBoxFit.cover:
        return BoxFit.cover;
      case StacBoxFit.fitWidth:
        return BoxFit.fitWidth;
      case StacBoxFit.fitHeight:
        return BoxFit.fitHeight;
      case StacBoxFit.scaleDown:
        return BoxFit.scaleDown;
      case StacBoxFit.none:
        return BoxFit.none;
    }
  }
}

extension StacOffsetParser on StacOffset {
  Offset get parse {
    return Offset(dx, dy);
  }
}

extension StacRectParser on StacRect {
  Rect? get parse {
    Rect fromCenter() => Rect.fromCenter(
          center: center?.parse ?? Offset.zero,
          width: width?.parse ?? 0.0,
          height: height?.parse ?? 0.0,
        );
    Rect fromCircle() => Rect.fromCircle(
          center: center?.parse ?? Offset.zero,
          radius: radius?.parse ?? 0.0,
        );
    Rect fromLTRB() => Rect.fromLTRB(
          left?.parse ?? 0.0,
          top?.parse ?? 0.0,
          right?.parse ?? 0.0,
          bottom?.parse ?? 0.0,
        );
    Rect fromLTWH() => Rect.fromLTWH(
          left?.parse ?? 0.0,
          top?.parse ?? 0.0,
          width?.parse ?? 0.0,
          height?.parse ?? 0.0,
        );
    Rect fromPoints() => Rect.fromPoints(
          a?.parse ?? Offset.zero,
          b?.parse ?? Offset.zero,
        );

    switch (rectType) {
      case StacRectType.fromCenter:
        return fromCenter();
      case StacRectType.fromCircle:
        return fromCircle();
      case StacRectType.fromLTRB:
        return fromLTRB();
      case StacRectType.fromLTWH:
        return fromLTWH();
      case StacRectType.fromPoints:
        return fromPoints();
    }
  }
}

extension StacImageRepeatParser on StacImageRepeat {
  ImageRepeat get parse {
    switch (this) {
      case StacImageRepeat.repeat:
        return ImageRepeat.repeat;
      case StacImageRepeat.repeatX:
        return ImageRepeat.repeatX;
      case StacImageRepeat.repeatY:
        return ImageRepeat.repeatY;
      case StacImageRepeat.noRepeat:
        return ImageRepeat.noRepeat;
    }
  }
}

extension StacFilterQualityParser on StacFilterQuality {
  FilterQuality get parse {
    switch (this) {
      case StacFilterQuality.none:
        return FilterQuality.none;
      case StacFilterQuality.low:
        return FilterQuality.low;
      case StacFilterQuality.medium:
        return FilterQuality.medium;
      case StacFilterQuality.high:
        return FilterQuality.high;
    }
  }
}

extension StacBorderStyleParser on StacBorderStyle {
  BorderStyle get parse {
    switch (this) {
      case StacBorderStyle.none:
        return BorderStyle.none;
      case StacBorderStyle.solid:
        return BorderStyle.solid;
    }
  }
}

extension StacBorderSideParser on StacBorderSide {
  BorderSide parse(BuildContext context) {
    return BorderSide(
      color: color?.toColor(context) ?? const Color(0xFF000000),
      width: width ?? 1.0,
      style: borderStyle?.parse ?? BorderStyle.solid,
      strokeAlign: strokeAlign ?? BorderSide.strokeAlignInside,
    );
  }
}

extension StacBorderParser on StacBorder {
  Border parse(BuildContext context) {
    // Check if individual border sides are specified
    final hasIndividualSides =
        top != null || right != null || bottom != null || left != null;

    if (hasIndividualSides) {
      // Use individual border sides
      return Border(
        top: top?.parse(context) ?? BorderSide.none,
        right: right?.parse(context) ?? BorderSide.none,
        bottom: bottom?.parse(context) ?? BorderSide.none,
        left: left?.parse(context) ?? BorderSide.none,
      );
    } else {
      // Fall back to uniform border behavior for all sides
      return Border.all(
        color: color.toColor(context) ?? const Color(0xFF000000),
        width: width ?? 1.0,
        style: borderStyle?.parse ?? BorderStyle.solid,
        strokeAlign: strokeAlign ?? BorderSide.strokeAlignInside,
      );
    }
  }
}

extension StacBorderRadiusParser on StacBorderRadius {
  BorderRadius get parse {
    return BorderRadius.only(
      topLeft: Radius.circular(topLeft ?? 0.0),
      topRight: Radius.circular(topRight ?? 0.0),
      bottomLeft: Radius.circular(bottomLeft ?? 0.0),
      bottomRight: Radius.circular(bottomRight ?? 0.0),
    );
  }
}

extension StacBoxShadowParser on StacBoxShadow {
  BoxShadow parse(BuildContext context) {
    return BoxShadow(
      color: color.toColor(context) ?? const Color(0xFF000000),
      blurRadius: blurRadius?.parse ?? 0.0,
      offset: offset?.parse ?? Offset.zero,
      spreadRadius: spreadRadius?.parse ?? 0.0,
      blurStyle: blurStyle?.parse ?? BlurStyle.normal,
    );
  }
}

extension StacBlurStyleParser on StacBlurStyle {
  BlurStyle get parse {
    switch (this) {
      case StacBlurStyle.normal:
        return BlurStyle.normal;
      case StacBlurStyle.solid:
        return BlurStyle.solid;
      case StacBlurStyle.outer:
        return BlurStyle.outer;
      case StacBlurStyle.inner:
        return BlurStyle.inner;
    }
  }
}

extension StacBoxShapeParser on StacBoxShape {
  BoxShape get parse {
    switch (this) {
      case StacBoxShape.rectangle:
        return BoxShape.rectangle;
      case StacBoxShape.circle:
        return BoxShape.circle;
    }
  }
}

extension StacTileModeParser on StacTileMode {
  TileMode get parse {
    switch (this) {
      case StacTileMode.clamp:
        return TileMode.clamp;
      case StacTileMode.repeated:
        return TileMode.repeated;
      case StacTileMode.mirror:
        return TileMode.mirror;
      case StacTileMode.decal:
        return TileMode.decal;
    }
  }
}

extension StacGradientParser on StacGradient {
  Gradient? parse(BuildContext context) {
    Gradient linearGradient() => LinearGradient(
          colors: colors?.map((e) => e.toColor(context)!).toList() ?? [],
          begin: begin?.parse ?? Alignment.centerLeft,
          end: end?.parse ?? Alignment.centerRight,
          stops: stops?.map((e) => e.parse).toList().toList(),
          tileMode: tileMode?.parse ?? TileMode.clamp,
        );

    Gradient radialGradient() => RadialGradient(
          colors: colors?.map((e) => e.toColor(context)!).toList() ?? [],
          stops: stops?.map((e) => e.parse).toList().toList(),
          tileMode: tileMode?.parse ?? TileMode.clamp,
          focal: focal?.parse,
          focalRadius: focalRadius ?? 0.0,
          radius: radius ?? 0.5,
          center: center?.parse ?? Alignment.center,
        );

    Gradient sweepGradient() => SweepGradient(
          colors: colors?.map((e) => e.toColor(context)!).toList() ?? [],
          stops: stops?.map((e) => e.parse).toList().toList(),
          center: center?.parse ?? Alignment.center,
          startAngle: startAngle ?? 0.0,
          endAngle: endAngle ?? math.pi * 2,
          tileMode: tileMode?.parse ?? TileMode.clamp,
        );

    switch (gradientType) {
      case StacGradientType.linear:
        return linearGradient();
      case StacGradientType.radial:
        return radialGradient();
      case StacGradientType.sweep:
        return sweepGradient();
      default:
        return null;
    }
  }
}

extension StacBoxConstraintsParser on StacBoxConstraints {
  BoxConstraints get parse {
    return BoxConstraints(
      minWidth: minWidth.parse,
      maxWidth: maxWidth.parse,
      minHeight: minHeight.parse,
      maxHeight: maxHeight.parse,
    );
  }
}
