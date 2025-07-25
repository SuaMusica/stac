import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/painting/stac_box_decoration/stac_box_decoration.dart';
import 'package:stac_models/painting/stac_color/stac_colors.dart';
import 'package:stac_models/painting/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_models/types/stac_alignment.dart';
import 'package:stac_models/types/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_models/types/stac_clip.dart';
import 'package:stac_models/types/stac_double.dart';

part 'stac_container.g.dart';

@JsonSerializable()
class StacContainer extends StacWidget {
  const StacContainer({
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transformAlignment,
    this.child,
    this.clipBehavior,
  });

  final StacAlignment? alignment;
  final StacEdgeInsets? padding;
  final StacColor? color;
  final StacBoxDecoration? decoration;
  final StacBoxDecoration? foregroundDecoration;
  final StacDouble? width;
  final StacDouble? height;
  final StacBoxConstraints? constraints;
  final StacEdgeInsets? margin;
  final StacAlignment? transformAlignment;
  @StacWidgetJsonConverter()
  final StacWidget? child;
  final StacClip? clipBehavior;

  @override
  String get type => 'container';

  factory StacContainer.fromJson(Map<String, dynamic> json) =>
      _$StacContainerFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    final json = _$StacContainerToJson(this);
    json['type'] = type;
    return json;
  }
}
