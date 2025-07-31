import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/painting/stac_color/stac_colors.dart';
import 'package:stac_models/painting/stac_text_span/stac_text_span.dart';
import 'package:stac_models/painting/stac_text_style/stac_text_style.dart';
import 'package:stac_models/types/stac_text_types.dart';

part 'stac_text.g.dart';

@JsonSerializable()
class StacText extends StacWidget {
  StacText({
    required this.data,
    this.children = const [],
    this.style,
    this.textAlign,
    this.textDirection,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.selectionColor,
  });

  final String data;

  final List<StacTextSpan> children;

  final StacTextStyle? style;

  final StacTextAlign? textAlign;

  final StacTextDirection? textDirection;

  final bool? softWrap;

  final StacTextOverflow? overflow;

  final double? textScaleFactor;

  final int? maxLines;

  final String? semanticsLabel;

  final StacTextWidthBasis? textWidthBasis;

  final StacColor? selectionColor;

  @override
  String get type => 'text';

  @override
  Map<String, dynamic> toJson() => _$StacTextToJson(this);

  factory StacText.fromJson(Map<String, dynamic> json) =>
      _$StacTextFromJson(json);
}
