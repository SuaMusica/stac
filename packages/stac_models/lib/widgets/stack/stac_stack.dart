import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/types/stac_alignment.dart';
import 'package:stac_models/types/stac_text_types.dart';
import 'package:stac_models/types/stac_stack_fit.dart';
import 'package:stac_models/types/stac_clip.dart';
import 'package:stac_models/core/converters/widget_converter.dart';

part 'stac_stack.g.dart';

@JsonSerializable()
class StacStack extends StacWidget {
  const StacStack({
    this.alignment,
    this.textDirection,
    this.fit,
    this.clipBehavior,
    this.children,
  });

  final StacAlignment? alignment;

  final StacTextDirection? textDirection;

  final StacStackFit? fit;

  final StacClip? clipBehavior;

  @StacWidgetListConverter()
  final List<StacWidget>? children;

  @override
  String get type => 'stack';

  factory StacStack.fromJson(Map<String, dynamic> json) =>
      _$StacStackFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacStackToJson(this);
}
