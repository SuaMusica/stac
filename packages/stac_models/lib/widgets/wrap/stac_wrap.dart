import 'package:json_annotation/json_annotation.dart';

import 'package:stac_models/core/converters/double_converter.dart';
import 'package:stac_models/types/stac_axis.dart';
import 'package:stac_models/types/stac_clip.dart';
import 'package:stac_models/types/stac_vertical_direction.dart';
import 'package:stac_models/types/stac_wrap_alignment.dart';
import 'package:stac_models/types/stac_wrap_cross_alignment.dart';
import 'package:stac_models/core/stac_widget.dart';

import '../../types/stac_text_types.dart' show StacTextDirection;

part 'stac_wrap.g.dart';

@JsonSerializable()
class StacWrap extends StacWidget {
  const StacWrap({
    this.children,
    this.direction,
    this.alignment,
    this.spacing,
    this.runAlignment,
    this.runSpacing,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.clipBehavior,
  });

  final List<StacWidget>? children;

  final StacAxis? direction;

  final StacWrapAlignment? alignment;

  @DoubleConverter()
  final double? spacing;

  final StacWrapAlignment? runAlignment;

  @DoubleConverter()
  final double? runSpacing;

  final StacWrapCrossAlignment? crossAxisAlignment;

  final StacTextDirection? textDirection;

  final StacVerticalDirection? verticalDirection;

  final StacClip? clipBehavior;

  @override
  String get type => 'wrap';

  factory StacWrap.fromJson(Map<String, dynamic> json) =>
      _$StacWrapFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacWrapToJson(this);
}
