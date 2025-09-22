import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac_core/stac_core.dart';

export 'stac_align_parser.dart';

part 'stac_align.freezed.dart';
part 'stac_align.g.dart';

@freezed
abstract class StacAlign with _$StacAlign {
  const factory StacAlign({
    @Default(StacAlignmentDirectional.center)
    StacAlignmentDirectional alignment,
    StacDouble? widthFactor,
    StacDouble? heightFactor,
    Map<String, dynamic>? child,
  }) = _StacAlign;

  factory StacAlign.fromJson(Map<String, dynamic> json) =>
      _$StacAlignFromJson(json);
}
