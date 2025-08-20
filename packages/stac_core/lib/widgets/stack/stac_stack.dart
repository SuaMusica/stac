import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/types/stac_alignment.dart';
import 'package:stac_core/types/stac_clip.dart';
import 'package:stac_core/types/stac_stack_fit.dart';
import 'package:stac_core/types/stac_text_types.dart';

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

  final List<StacWidget>? children;

  @override
  String get type => 'stack';

  factory StacStack.fromJson(Map<String, dynamic> json) =>
      _$StacStackFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacStackToJson(this);
}
