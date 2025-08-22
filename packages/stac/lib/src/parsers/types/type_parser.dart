import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/painting/stac_box_decoration_parser.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/painting/stac_text_style_parser.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/input_formatters.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_core/theme/stac_button_style/stac_button_style.dart';
import 'package:stac_core/theme/stac_input_decoration_theme/stac_input_decoration_theme.dart';
import 'package:stac_core/types/stac_alignment.dart';
import 'package:stac_core/types/stac_beveled_rectangle_border/stac_beveled_rectangle_border.dart';
import 'package:stac_core/types/stac_blur_style.dart';
import 'package:stac_core/types/stac_border/stac_border.dart';
import 'package:stac_core/types/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_core/types/stac_box_fit.dart';
import 'package:stac_core/types/stac_box_shadow/stac_box_shadow.dart';
import 'package:stac_core/types/stac_box_shape.dart';
import 'package:stac_core/types/stac_circle_border/stac_circle_border.dart';
import 'package:stac_core/types/stac_continuous_rectangle_border/stac_continuous_rectangle_border.dart';
import 'package:stac_core/types/stac_cross_axis_alignment.dart';
import 'package:stac_core/types/stac_filter_quality.dart';
import 'package:stac_core/types/stac_flex_fit.dart';
import 'package:stac_core/types/stac_gradient/stac_gradient.dart';
import 'package:stac_core/types/stac_image_repeat.dart';
import 'package:stac_core/types/stac_main_axis_alignment.dart';
import 'package:stac_core/types/stac_main_axis_size.dart';
import 'package:stac_core/types/stac_offset/stac_offset.dart';
import 'package:stac_core/types/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/types/stac_stack_fit.dart';
import 'package:stac_core/types/stac_vertical_direction.dart';
import 'package:stac_core/types/stac_wrap_alignment.dart';
import 'package:stac_core/types/stac_wrap_cross_alignment.dart';

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

extension StacStrokeCapParser on StacStrokeCap? {
  StrokeCap? get parse {
    switch (this) {
      case StacStrokeCap.butt:
        return StrokeCap.butt;
      case StacStrokeCap.round:
        return StrokeCap.round;
      case StacStrokeCap.square:
        return StrokeCap.square;
      default:
        return null;
    }
  }
}

extension StacOverflowBarAlignmentParser on StacOverflowBarAlignment {
  OverflowBarAlignment get parse {
    switch (this) {
      case StacOverflowBarAlignment.start:
        return OverflowBarAlignment.start;
      case StacOverflowBarAlignment.end:
        return OverflowBarAlignment.end;
      case StacOverflowBarAlignment.center:
        return OverflowBarAlignment.center;
    }
  }
}

extension StacInputDecorationParser on StacInputDecoration {
  InputDecoration parse(BuildContext context) {
    return InputDecoration(
      icon: icon.parse(context),
      labelText: labelText,
      labelStyle: labelStyle?.parse(context),
      hintText: hintText,
      hintStyle: hintStyle?.parse(context),
      helperText: helperText,
      helperStyle: helperStyle?.parse(context),
      errorText: errorText,
      errorStyle: errorStyle?.parse(context),
      prefixIcon: prefixIcon.parse(context),
      prefixText: prefixText,
      prefixStyle: prefixStyle?.parse(context),
      suffixIcon: suffixIcon.parse(context),
      suffixText: suffixText,
      suffixStyle: suffixStyle?.parse(context),
      isDense: isDense,
      contentPadding: contentPadding?.parse,
      filled: filled,
      fillColor: fillColor?.toColor(context),
      alignLabelWithHint: alignLabelWithHint,
    );
  }
}

extension StacTextInputTypeParser on StacTextInputType {
  TextInputType get parse {
    switch (this) {
      case StacTextInputType.text:
        return TextInputType.text;
      case StacTextInputType.multiline:
        return TextInputType.multiline;
      case StacTextInputType.number:
        return TextInputType.number;
      case StacTextInputType.phone:
        return TextInputType.phone;
      case StacTextInputType.datetime:
        return TextInputType.datetime;
      case StacTextInputType.emailAddress:
        return TextInputType.emailAddress;
      case StacTextInputType.url:
        return TextInputType.url;
      case StacTextInputType.visiblePassword:
        return TextInputType.visiblePassword;
      case StacTextInputType.name:
        return TextInputType.name;
      case StacTextInputType.streetAddress:
        return TextInputType.streetAddress;
      case StacTextInputType.none:
        return TextInputType.none;
    }
  }
}

extension StacTextInputActionParser on StacTextInputAction {
  TextInputAction get parse {
    switch (this) {
      case StacTextInputAction.none:
        return TextInputAction.none;
      case StacTextInputAction.unspecified:
        return TextInputAction.unspecified;
      case StacTextInputAction.done:
        return TextInputAction.done;
      case StacTextInputAction.go:
        return TextInputAction.go;
      case StacTextInputAction.search:
        return TextInputAction.search;
      case StacTextInputAction.send:
        return TextInputAction.send;
      case StacTextInputAction.next:
        return TextInputAction.next;
      case StacTextInputAction.previous:
        return TextInputAction.previous;
      case StacTextInputAction.continueAction:
        return TextInputAction.continueAction;
      case StacTextInputAction.join:
        return TextInputAction.join;
      case StacTextInputAction.route:
        return TextInputAction.route;
      case StacTextInputAction.emergencyCall:
        return TextInputAction.emergencyCall;
      case StacTextInputAction.newline:
        return TextInputAction.newline;
    }
  }
}

extension StacTextCapitalizationParser on StacTextCapitalization {
  TextCapitalization get parse {
    switch (this) {
      case StacTextCapitalization.none:
        return TextCapitalization.none;
      case StacTextCapitalization.characters:
        return TextCapitalization.characters;
      case StacTextCapitalization.words:
        return TextCapitalization.words;
      case StacTextCapitalization.sentences:
        return TextCapitalization.sentences;
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

/// Maps [StacTextBaseline] to Flutter's [TextBaseline].
extension StacTextBaselineParser on StacTextBaseline? {
  /// Parses this [StacTextBaseline] into a Flutter [TextBaseline].
  TextBaseline? get parse {
    switch (this) {
      case StacTextBaseline.alphabetic:
        return TextBaseline.alphabetic;
      case StacTextBaseline.ideographic:
        return TextBaseline.ideographic;
      default:
        return null;
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
          width: width ?? 0.0,
          height: height ?? 0.0,
        );
    Rect fromCircle() => Rect.fromCircle(
          center: center?.parse ?? Offset.zero,
          radius: radius ?? 0.0,
        );
    Rect fromLTRB() => Rect.fromLTRB(
          left ?? 0.0,
          top ?? 0.0,
          right ?? 0.0,
          bottom ?? 0.0,
        );
    Rect fromLTWH() => Rect.fromLTWH(
          left ?? 0.0,
          top ?? 0.0,
          width ?? 0.0,
          height ?? 0.0,
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

extension StacImageFilterParser on StacImageFilter {
  ImageFilter get parse {
    switch (type) {
      case StacImageFilterType.blur:
        final sx = sigmaX ?? 0.0;
        final sy = sigmaY ?? sx;
        return ImageFilter.blur(sigmaX: sx, sigmaY: sy);
      case StacImageFilterType.matrix:
        if (matrix != null && matrix!.length == 16) {
          return ImageFilter.matrix(Float64List.fromList(matrix!));
        }
        return ImageFilter.matrix(Float64List.fromList(List.filled(16, 0)));
      case StacImageFilterType.dilate:
        final rx = radiusX ?? 0.0;
        final ry = radiusY ?? rx;
        return ImageFilter.dilate(radiusX: rx, radiusY: ry);
      case StacImageFilterType.erode:
        final rx = radiusX ?? 0.0;
        final ry = radiusY ?? rx;
        return ImageFilter.erode(radiusX: rx, radiusY: ry);
      case StacImageFilterType.compose:
        final innerFilter = inner?.parse;
        final outerFilter = outer?.parse;
        if (innerFilter != null && outerFilter != null) {
          return ImageFilter.compose(inner: innerFilter, outer: outerFilter);
        }
        return ImageFilter.blur(sigmaX: 0, sigmaY: 0);
    }
  }
}

extension StacRectTweenParser on StacRectTween {
  RectTween parse(BuildContext context) {
    final begin = this.begin?.parse;
    final end = this.end?.parse;

    switch (type) {
      case 'materialRectArcTween':
        return MaterialRectArcTween(begin: begin, end: end);
      case 'materialRectCenterArcTween':
        return MaterialRectCenterArcTween(begin: begin, end: end);
      default:
        return RectTween(begin: begin, end: end);
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
    final hasIndividualSides =
        top != null || right != null || bottom != null || left != null;

    if (hasIndividualSides) {
      return Border(
        top: top?.parse(context) ?? BorderSide.none,
        right: right?.parse(context) ?? BorderSide.none,
        bottom: bottom?.parse(context) ?? BorderSide.none,
        left: left?.parse(context) ?? BorderSide.none,
      );
    } else {
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

/// Parses a [StacTableBorder] to a Flutter [TableBorder].
extension StacTableBorderParser on StacTableBorder {
  TableBorder parse(BuildContext context) {
    return TableBorder.all(
      color: color?.toColor(context) ?? Colors.black,
      width: width ?? 1.0,
      style: style?.parse ?? BorderStyle.solid,
      borderRadius: borderRadius?.parse ?? BorderRadius.zero,
    );
  }
}

/// Parses a [StacTableColumnWidth] to a Flutter [TableColumnWidth].
extension StacTableColumnWidthParser on StacTableColumnWidth {
  TableColumnWidth get parse {
    switch (type) {
      case StacTableColumnWidthType.fixedColumnWidth:
        return FixedColumnWidth(value ?? 0.0);
      case StacTableColumnWidthType.flexColumnWidth:
        return FlexColumnWidth(value ?? 1.0);
      case StacTableColumnWidthType.fractionColumnWidth:
        return FractionColumnWidth(value ?? 0.5);
      case StacTableColumnWidthType.intrinsicColumnWidth:
        return IntrinsicColumnWidth(flex: value ?? 1.0);
    }
  }
}

/// Parses a [StacTableRow] to a Flutter [TableRow].
extension StacTableRowParser on StacTableRow {
  TableRow parse(BuildContext context) {
    return TableRow(
      decoration: decoration?.parse(context),
      children: children.parseList(context) ?? const <Widget>[],
    );
  }
}

extension StacBoxShadowParser on StacBoxShadow {
  BoxShadow parse(BuildContext context) {
    return BoxShadow(
      color: color.toColor(context) ?? const Color(0xFF000000),
      blurRadius: blurRadius ?? 0.0,
      offset: offset?.parse ?? Offset.zero,
      spreadRadius: spreadRadius ?? 0.0,
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

extension StacBottomNavigationBarLandscapeLayoutParser
    on StacBottomNavigationBarLandscapeLayout {
  BottomNavigationBarLandscapeLayout get parse {
    switch (this) {
      case StacBottomNavigationBarLandscapeLayout.spread:
        return BottomNavigationBarLandscapeLayout.spread;
      case StacBottomNavigationBarLandscapeLayout.centered:
        return BottomNavigationBarLandscapeLayout.centered;
      case StacBottomNavigationBarLandscapeLayout.linear:
        return BottomNavigationBarLandscapeLayout.linear;
    }
  }
}

extension StacBottomNavigationBarTypeParser on StacBottomNavigationBarType {
  BottomNavigationBarType get parse {
    switch (this) {
      case StacBottomNavigationBarType.fixed:
        return BottomNavigationBarType.fixed;
      case StacBottomNavigationBarType.shifting:
        return BottomNavigationBarType.shifting;
    }
  }
}

extension StacTabBarIndicatorSizeParser on StacTabBarIndicatorSize {
  TabBarIndicatorSize get parse {
    switch (this) {
      case StacTabBarIndicatorSize.label:
        return TabBarIndicatorSize.label;
      case StacTabBarIndicatorSize.tab:
        return TabBarIndicatorSize.tab;
    }
  }
}

extension StacTabAlignmentParser on StacTabAlignment {
  TabAlignment get parse {
    switch (this) {
      case StacTabAlignment.center:
        return TabAlignment.center;
      case StacTabAlignment.fill:
        return TabAlignment.fill;
      case StacTabAlignment.startOffset:
        return TabAlignment.startOffset;
      case StacTabAlignment.start:
        return TabAlignment.start;
    }
  }
}

extension StacGradientParser on StacGradient {
  Gradient? parse(BuildContext context) {
    Gradient linearGradient() => LinearGradient(
          colors: colors?.map((e) => e.toColor(context)!).toList() ?? [],
          begin: begin?.parse ?? Alignment.centerLeft,
          end: end?.parse ?? Alignment.centerRight,
          stops: stops,
          tileMode: tileMode?.parse ?? TileMode.clamp,
        );

    Gradient radialGradient() => RadialGradient(
          colors: colors?.map((e) => e.toColor(context)!).toList() ?? [],
          stops: stops,
          tileMode: tileMode?.parse ?? TileMode.clamp,
          focal: focal?.parse,
          focalRadius: focalRadius ?? 0.0,
          radius: radius ?? 0.5,
          center: center?.parse ?? Alignment.center,
        );

    Gradient sweepGradient() => SweepGradient(
          colors: colors?.map((e) => e.toColor(context)!).toList() ?? [],
          stops: stops,
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
      minWidth: minWidth ?? 0.0,
      maxWidth: maxWidth ?? double.infinity,
      minHeight: minHeight ?? 0.0,
      maxHeight: maxHeight ?? double.infinity,
    );
  }
}

extension StacMainAxisAlignmentParser on StacMainAxisAlignment {
  MainAxisAlignment get parse {
    switch (this) {
      case StacMainAxisAlignment.start:
        return MainAxisAlignment.start;
      case StacMainAxisAlignment.end:
        return MainAxisAlignment.end;
      case StacMainAxisAlignment.center:
        return MainAxisAlignment.center;
      case StacMainAxisAlignment.spaceBetween:
        return MainAxisAlignment.spaceBetween;
      case StacMainAxisAlignment.spaceAround:
        return MainAxisAlignment.spaceAround;
      case StacMainAxisAlignment.spaceEvenly:
        return MainAxisAlignment.spaceEvenly;
    }
  }
}

extension StacMainAxisSizeParser on StacMainAxisSize {
  MainAxisSize get parse {
    switch (this) {
      case StacMainAxisSize.min:
        return MainAxisSize.min;
      case StacMainAxisSize.max:
        return MainAxisSize.max;
    }
  }
}

extension StacCrossAxisAlignmentParser on StacCrossAxisAlignment {
  CrossAxisAlignment get parse {
    switch (this) {
      case StacCrossAxisAlignment.start:
        return CrossAxisAlignment.start;
      case StacCrossAxisAlignment.end:
        return CrossAxisAlignment.end;
      case StacCrossAxisAlignment.center:
        return CrossAxisAlignment.center;
      case StacCrossAxisAlignment.stretch:
        return CrossAxisAlignment.stretch;
      case StacCrossAxisAlignment.baseline:
        return CrossAxisAlignment.baseline;
    }
  }
}

extension StacVerticalDirectionParser on StacVerticalDirection {
  VerticalDirection get parse {
    switch (this) {
      case StacVerticalDirection.up:
        return VerticalDirection.up;
      case StacVerticalDirection.down:
        return VerticalDirection.down;
    }
  }
}

/// Maps [StacTableCellVerticalAlignment] to Flutter's [TableCellVerticalAlignment].
extension StacTableCellVerticalAlignmentParser
    on StacTableCellVerticalAlignment? {
  TableCellVerticalAlignment get parse {
    switch (this) {
      case StacTableCellVerticalAlignment.top:
        return TableCellVerticalAlignment.top;
      case StacTableCellVerticalAlignment.middle:
        return TableCellVerticalAlignment.middle;
      case StacTableCellVerticalAlignment.bottom:
        return TableCellVerticalAlignment.bottom;
      case StacTableCellVerticalAlignment.baseline:
        return TableCellVerticalAlignment.baseline;
      case StacTableCellVerticalAlignment.fill:
        return TableCellVerticalAlignment.fill;
      default:
        return TableCellVerticalAlignment.top;
    }
  }
}

extension StacBrightnessParser on StacBrightness {
  Brightness get parse {
    switch (this) {
      case StacBrightness.light:
        return Brightness.light;
      case StacBrightness.dark:
        return Brightness.dark;
      case StacBrightness.system:
        return Brightness.light;
    }
  }
}

extension StacSmartDashesTypeParser on StacSmartDashesType {
  SmartDashesType get parse {
    switch (this) {
      case StacSmartDashesType.disabled:
        return SmartDashesType.disabled;
      case StacSmartDashesType.enabled:
        return SmartDashesType.enabled;
    }
  }
}

extension StacSmartQuotesTypeParser on StacSmartQuotesType {
  SmartQuotesType get parse {
    switch (this) {
      case StacSmartQuotesType.disabled:
        return SmartQuotesType.disabled;
      case StacSmartQuotesType.enabled:
        return SmartQuotesType.enabled;
    }
  }
}

extension StacMaxLengthEnforcementParser on StacMaxLengthEnforcement {
  MaxLengthEnforcement get parse {
    switch (this) {
      case StacMaxLengthEnforcement.none:
        return MaxLengthEnforcement.none;
      case StacMaxLengthEnforcement.enforced:
        return MaxLengthEnforcement.enforced;
    }
  }
}

extension StacInputFormatterTypeCoreParser on StacInputFormatterType {
  InputFormatterType get parse {
    switch (this) {
      case StacInputFormatterType.allow:
        return InputFormatterType.allow;
      case StacInputFormatterType.deny:
        return InputFormatterType.deny;
    }
  }
}

extension StacStackFitParser on StacStackFit {
  StackFit get parse {
    switch (this) {
      case StacStackFit.loose:
        return StackFit.loose;
      case StacStackFit.expand:
        return StackFit.expand;
      case StacStackFit.passthrough:
        return StackFit.passthrough;
    }
  }
}

extension StacIconAlignmentParser on StacIconAlignment {
  IconAlignment get parse {
    switch (this) {
      case StacIconAlignment.start:
        return IconAlignment.start;
      case StacIconAlignment.end:
        return IconAlignment.end;
    }
  }
}

extension StacSizeParser on StacSize {
  Size get parse {
    return Size(width, height);
  }
}

extension StacMouseCursorParser on StacMouseCursor {
  MouseCursor get parse {
    switch (this) {
      case StacMouseCursor.none:
        return SystemMouseCursors.basic;
      case StacMouseCursor.basic:
        return SystemMouseCursors.basic;
      case StacMouseCursor.click:
        return SystemMouseCursors.click;
      case StacMouseCursor.forbidden:
        return SystemMouseCursors.forbidden;
      case StacMouseCursor.wait:
        return SystemMouseCursors.wait;
      case StacMouseCursor.progress:
        return SystemMouseCursors.progress;
      case StacMouseCursor.contextMenu:
        return SystemMouseCursors.contextMenu;
      case StacMouseCursor.help:
        return SystemMouseCursors.help;
      case StacMouseCursor.text:
        return SystemMouseCursors.text;
      case StacMouseCursor.verticalText:
        return SystemMouseCursors.verticalText;
      case StacMouseCursor.cell:
        return SystemMouseCursors.cell;
      case StacMouseCursor.precise:
        return SystemMouseCursors.precise;
      case StacMouseCursor.move:
        return SystemMouseCursors.move;
      case StacMouseCursor.grab:
        return SystemMouseCursors.grab;
      case StacMouseCursor.grabbing:
        return SystemMouseCursors.grabbing;
      case StacMouseCursor.noDrop:
        return SystemMouseCursors.noDrop;
      case StacMouseCursor.alias:
        return SystemMouseCursors.alias;
      case StacMouseCursor.copy:
        return SystemMouseCursors.copy;
      case StacMouseCursor.disappearing:
        return SystemMouseCursors.disappearing;
      case StacMouseCursor.allScroll:
        return SystemMouseCursors.allScroll;
      case StacMouseCursor.resizeLeftRight:
        return SystemMouseCursors.resizeLeftRight;
      case StacMouseCursor.resizeUpDown:
        return SystemMouseCursors.resizeUpDown;
      case StacMouseCursor.resizeUpLeftDownRight:
        return SystemMouseCursors.resizeUpLeftDownRight;
      case StacMouseCursor.resizeUpRightDownLeft:
        return SystemMouseCursors.resizeUpRightDownLeft;
      case StacMouseCursor.resizeUp:
        return SystemMouseCursors.resizeUp;
      case StacMouseCursor.resizeDown:
        return SystemMouseCursors.resizeDown;
      case StacMouseCursor.resizeLeft:
        return SystemMouseCursors.resizeLeft;
      case StacMouseCursor.resizeRight:
        return SystemMouseCursors.resizeRight;
      case StacMouseCursor.resizeUpLeft:
        return SystemMouseCursors.resizeUpLeft;
      case StacMouseCursor.resizeUpRight:
        return SystemMouseCursors.resizeUpRight;
      case StacMouseCursor.resizeDownLeft:
        return SystemMouseCursors.resizeDownLeft;
      case StacMouseCursor.resizeDownRight:
        return SystemMouseCursors.resizeDownRight;
      case StacMouseCursor.resizeColumn:
        return SystemMouseCursors.resizeColumn;
      case StacMouseCursor.resizeRow:
        return SystemMouseCursors.resizeRow;
      case StacMouseCursor.zoomIn:
        return SystemMouseCursors.zoomIn;
      case StacMouseCursor.zoomOut:
        return SystemMouseCursors.zoomOut;
    }
  }
}

extension StacSliderInteractionParser on StacSliderInteraction {
  SliderInteraction get parse {
    switch (this) {
      case StacSliderInteraction.tapAndSlide:
        return SliderInteraction.tapAndSlide;
      case StacSliderInteraction.tapOnly:
        return SliderInteraction.tapOnly;
      case StacSliderInteraction.slideOnly:
        return SliderInteraction.slideOnly;
      case StacSliderInteraction.slideThumb:
        return SliderInteraction.slideThumb;
    }
  }
}

extension StacMaterialTapTargetSizeParser on StacMaterialTapTargetSize {
  MaterialTapTargetSize get parse {
    switch (this) {
      case StacMaterialTapTargetSize.padded:
        return MaterialTapTargetSize.padded;
      case StacMaterialTapTargetSize.shrinkWrap:
        return MaterialTapTargetSize.shrinkWrap;
    }
  }
}

extension StacDurationParser on StacDuration {
  Duration get parse {
    return Duration(
      days: days ?? 0,
      hours: hours ?? 0,
      minutes: minutes ?? 0,
      seconds: seconds ?? 0,
      milliseconds: milliseconds ?? 0,
      microseconds: microseconds ?? 0,
    );
  }
}

extension StacVisualDensityParser on StacVisualDensity {
  VisualDensity get parse {
    return VisualDensity(
      horizontal: horizontal ?? 0.0,
      vertical: vertical ?? 0.0,
    );
  }
}

extension StacShapeBorderParser on StacShapeBorder {
  OutlinedBorder parse(BuildContext context) {
    switch (this) {
      case StacRoundedRectangleBorder():
        return (this as StacRoundedRectangleBorder).parse(context);
      case StacCircleBorder():
        return (this as StacCircleBorder).parse(context);
      default:
        return RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.zero,
        );
    }
  }
}

extension StacRoundedRectangleBorderParser on StacRoundedRectangleBorder {
  RoundedRectangleBorder parse(BuildContext context) {
    return RoundedRectangleBorder(
      side: side?.parse(context) ?? BorderSide.none,
      borderRadius: borderRadius?.parse ?? BorderRadius.zero,
    );
  }
}

extension StacCircleBorderParser on StacCircleBorder {
  CircleBorder parse(BuildContext context) {
    return CircleBorder(
      side: side?.parse(context) ?? BorderSide.none,
      eccentricity: eccentricity ?? 0.0,
    );
  }
}

extension StacContinuousRectangleBorderParser on StacContinuousRectangleBorder {
  ContinuousRectangleBorder parse(BuildContext context) {
    return ContinuousRectangleBorder(
      side: side?.parse(context) ?? BorderSide.none,
      borderRadius: borderRadius?.parse ?? BorderRadius.zero,
    );
  }
}

extension StacBeveledRectangleBorderParser on StacBeveledRectangleBorder {
  BeveledRectangleBorder parse(BuildContext context) {
    return BeveledRectangleBorder(
      side: side?.parse(context) ?? BorderSide.none,
    );
  }
}

extension StacFlexFitParser on StacFlexFit {
  FlexFit get parse {
    switch (this) {
      case StacFlexFit.tight:
        return FlexFit.tight;
      case StacFlexFit.loose:
        return FlexFit.loose;
    }
  }
}

extension StacWrapAlignmentParser on StacWrapAlignment {
  WrapAlignment get parse {
    switch (this) {
      case StacWrapAlignment.start:
        return WrapAlignment.start;
      case StacWrapAlignment.end:
        return WrapAlignment.end;
      case StacWrapAlignment.center:
        return WrapAlignment.center;
      case StacWrapAlignment.spaceBetween:
        return WrapAlignment.spaceBetween;
      case StacWrapAlignment.spaceAround:
        return WrapAlignment.spaceAround;
      case StacWrapAlignment.spaceEvenly:
        return WrapAlignment.spaceEvenly;
    }
  }
}

extension StacWrapCrossAlignmentParser on StacWrapCrossAlignment {
  WrapCrossAlignment get parse {
    switch (this) {
      case StacWrapCrossAlignment.start:
        return WrapCrossAlignment.start;
      case StacWrapCrossAlignment.end:
        return WrapCrossAlignment.end;
      case StacWrapCrossAlignment.center:
        return WrapCrossAlignment.center;
    }
  }
}

extension StacAxisParser on StacAxis {
  Axis get parse {
    switch (this) {
      case StacAxis.horizontal:
        return Axis.horizontal;
      case StacAxis.vertical:
        return Axis.vertical;
    }
  }
}

extension StacInputDecorationThemeParser on StacInputDecorationTheme? {
  InputDecorationTheme parse(BuildContext context) {
    FloatingLabelBehavior parseFloatingLabelBehavior(String? behavior) {
      switch (behavior) {
        case 'always':
          return FloatingLabelBehavior.always;
        case 'never':
          return FloatingLabelBehavior.never;
        case 'auto':
        default:
          return FloatingLabelBehavior.auto;
      }
    }

    FloatingLabelAlignment parseFloatingLabelAlignment(String? alignment) {
      switch (alignment) {
        case 'center':
          return FloatingLabelAlignment.center;
        case 'start':
        default:
          return FloatingLabelAlignment.start;
      }
    }

    return InputDecorationTheme(
      labelStyle: this?.labelStyle?.parse(context),
      floatingLabelStyle: this?.floatingLabelStyle?.parse(context),
      helperStyle: this?.helperStyle?.parse(context),
      helperMaxLines: this?.helperMaxLines,
      hintStyle: this?.hintStyle?.parse(context),
      errorStyle: this?.errorStyle?.parse(context),
      errorMaxLines: this?.errorMaxLines,
      floatingLabelBehavior:
          parseFloatingLabelBehavior(this?.floatingLabelBehavior),
      floatingLabelAlignment:
          parseFloatingLabelAlignment(this?.floatingLabelAlignment),
      isDense: this?.isDense ?? false,
      contentPadding: this?.contentPadding?.parse,
      isCollapsed: this?.isCollapsed ?? false,
      iconColor: this?.iconColor.toColor(context),
      prefixStyle: this?.prefixStyle?.parse(context),
      prefixIconColor: this?.prefixIconColor.toColor(context),
      suffixStyle: this?.suffixStyle?.parse(context),
      suffixIconColor: this?.suffixIconColor.toColor(context),
      counterStyle: this?.counterStyle?.parse(context),
      filled: this?.filled ?? false,
      fillColor: this?.fillColor.toColor(context),
      alignLabelWithHint: this?.alignLabelWithHint ?? false,
      constraints: this?.constraints?.parse,
    );
  }
}

extension StacDropdownMenuEntryParser on StacDropdownMenuEntry? {
  DropdownMenuEntry? parse(BuildContext context) {
    return DropdownMenuEntry(
      value: this?.value,
      label: this?.label ?? '',
      labelWidget: this?.labelWidget?.parse(context),
      leadingIcon: this?.leadingIcon?.parse(context),
      enabled: this?.enabled ?? true,
      style: this?.style?.parseTextButton(context),
    );
  }
}

extension StacOptionsViewOpenDirectionParser on StacOptionsViewOpenDirection {
  OptionsViewOpenDirection get parse {
    switch (this) {
      case StacOptionsViewOpenDirection.up:
        return OptionsViewOpenDirection.up;
      case StacOptionsViewOpenDirection.down:
        return OptionsViewOpenDirection.down;
    }
  }
}

/// Extends [StacRefreshIndicatorTriggerMode] to provide parsing functionality.
extension StacRefreshIndicatorTriggerModeParser
    on StacRefreshIndicatorTriggerMode {
  /// Parses this [StacRefreshIndicatorTriggerMode] into a Flutter [RefreshIndicatorTriggerMode].
  RefreshIndicatorTriggerMode get parse {
    switch (this) {
      case StacRefreshIndicatorTriggerMode.onEdge:
        return RefreshIndicatorTriggerMode.onEdge;
      case StacRefreshIndicatorTriggerMode.anywhere:
        return RefreshIndicatorTriggerMode.anywhere;
    }
  }
}

/// Extends [StacScrollPhysics] enum to provide parsing functionality.
extension StacScrollPhysicsEnumParser on StacScrollPhysics {
  /// Parses this [StacScrollPhysics] enum into a Flutter [ScrollPhysics] object.
  ScrollPhysics get parse {
    switch (this) {
      case StacScrollPhysics.never:
        return const NeverScrollableScrollPhysics();
      case StacScrollPhysics.bouncing:
        return const BouncingScrollPhysics();
      case StacScrollPhysics.clamping:
        return const ClampingScrollPhysics();
      case StacScrollPhysics.fixed:
        return const FixedExtentScrollPhysics();
      case StacScrollPhysics.page:
        return const PageScrollPhysics();
    }
  }
}

/// Extends [StacScrollViewKeyboardDismissBehavior] to provide parsing functionality.
extension StacScrollViewKeyboardDismissBehaviorParser
    on StacScrollViewKeyboardDismissBehavior {
  /// Parses this [StacScrollViewKeyboardDismissBehavior] into a Flutter [ScrollViewKeyboardDismissBehavior] object.
  ScrollViewKeyboardDismissBehavior get parse {
    switch (this) {
      case StacScrollViewKeyboardDismissBehavior.manual:
        return ScrollViewKeyboardDismissBehavior.manual;
      case StacScrollViewKeyboardDismissBehavior.onDrag:
        return ScrollViewKeyboardDismissBehavior.onDrag;
    }
  }
}

/// Extends [StacListTileStyle] to provide parsing functionality.
extension StacListTileStyleParser on StacListTileStyle {
  /// Parses this [StacListTileStyle] into a Flutter [ListTileStyle].
  ListTileStyle get parse {
    switch (this) {
      case StacListTileStyle.list:
        return ListTileStyle.list;
      case StacListTileStyle.drawer:
        return ListTileStyle.drawer;
    }
  }
}

/// Extends [StacListTileTitleAlignment] to provide parsing functionality.
extension StacListTileTitleAlignmentParser on StacListTileTitleAlignment {
  /// Parses this [StacListTileTitleAlignment] into a Flutter [ListTileTitleAlignment].
  ListTileTitleAlignment get parse {
    switch (this) {
      case StacListTileTitleAlignment.titleHeight:
        return ListTileTitleAlignment.titleHeight;
      case StacListTileTitleAlignment.threeLine:
        return ListTileTitleAlignment.threeLine;
      case StacListTileTitleAlignment.bottom:
        return ListTileTitleAlignment.bottom;
      case StacListTileTitleAlignment.center:
        return ListTileTitleAlignment.center;
    }
  }
}

/// Extends [StacHitTestBehavior] to provide parsing functionality.
extension StacHitTestBehaviorParser on StacHitTestBehavior {
  /// Parses this [StacHitTestBehavior] into a Flutter [HitTestBehavior].
  HitTestBehavior get parse {
    switch (this) {
      case StacHitTestBehavior.deferToChild:
        return HitTestBehavior.deferToChild;
      case StacHitTestBehavior.opaque:
        return HitTestBehavior.opaque;
      case StacHitTestBehavior.translucent:
        return HitTestBehavior.translucent;
    }
  }
}

/// Extends [StacSnackBarBehavior] to map to Flutter's [SnackBarBehavior].
extension StacSnackBarBehaviorParser on StacSnackBarBehavior? {
  SnackBarBehavior? get parse {
    switch (this) {
      case StacSnackBarBehavior.fixed:
        return SnackBarBehavior.fixed;
      case StacSnackBarBehavior.floating:
        return SnackBarBehavior.floating;
      default:
        return null;
    }
  }
}

/// Extends [StacDismissDirection] to map to Flutter's [DismissDirection].
extension StacDismissDirectionParser on StacDismissDirection? {
  DismissDirection? get parse {
    switch (this) {
      case StacDismissDirection.horizontal:
        return DismissDirection.horizontal;
      case StacDismissDirection.vertical:
        return DismissDirection.vertical;
      case StacDismissDirection.down:
        return DismissDirection.down;
      case StacDismissDirection.up:
        return DismissDirection.up;
      case StacDismissDirection.endToStart:
        return DismissDirection.endToStart;
      case StacDismissDirection.startToEnd:
        return DismissDirection.startToEnd;
      default:
        return null;
    }
  }
}

/// Extends [StacClip] to map to Flutter's [Clip].
extension StacClipNullableParser on StacClip? {
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
      default:
        return Clip.hardEdge;
    }
  }
}

/// Extends [StacDialogTraversalEdgeBehavior] to provide parsing functionality.
extension StacDialogTraversalEdgeBehaviorParser
    on StacDialogTraversalEdgeBehavior? {
  /// Parses this [StacDialogTraversalEdgeBehavior] into Flutter's
  /// [TraversalEdgeBehavior].
  TraversalEdgeBehavior? get parse {
    switch (this) {
      case StacDialogTraversalEdgeBehavior.closedLoop:
        return TraversalEdgeBehavior.closedLoop;
      case StacDialogTraversalEdgeBehavior.leaveFlutterView:
        return TraversalEdgeBehavior.leaveFlutterView;
      case StacDialogTraversalEdgeBehavior.parentScope:
        return TraversalEdgeBehavior.parentScope;
      case StacDialogTraversalEdgeBehavior.stop:
        return TraversalEdgeBehavior.stop;
      default:
        return null;
    }
  }
}

extension StacSwitchTypeParser on StacSwitchType {
  StacSwitchType get parse {
    switch (this) {
      case StacSwitchType.adaptive:
        return StacSwitchType.adaptive;
      case StacSwitchType.cupertino:
        return StacSwitchType.cupertino;
      case StacSwitchType.material:
        return StacSwitchType.material;
    }
  }
}

extension StacShadowParser on StacShadow {
  Shadow parse(BuildContext context) {
    return Shadow(
      color: color.toColor(context) ?? Colors.transparent,
      offset: (offset)?.parse ?? Offset.zero,
      blurRadius: (blurRadius) ?? 0.0,
    );
  }
}

/// Extends [StacAutovalidateMode] to provide parsing functionality.
extension StacAutovalidateModeParser on StacAutovalidateMode {
  /// Parses this [StacAutovalidateMode] into a Flutter [AutovalidateMode].
  AutovalidateMode get parse {
    switch (this) {
      case StacAutovalidateMode.disabled:
        return AutovalidateMode.disabled;
      case StacAutovalidateMode.always:
        return AutovalidateMode.always;
      case StacAutovalidateMode.onUserInteraction:
        return AutovalidateMode.onUserInteraction;
    }
  }
}
