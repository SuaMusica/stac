import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/painting/stac_color/stac_colors.dart';
import 'package:stac_models/types/stac_double.dart';
import 'package:stac_models/widgets/widgets.dart';

StacWidget homeScreen() {
  return StacContainer(
    color: StacColors.pink,
    width: StacDouble(100),
    height: StacDouble(100),
    child: StacText(
      data: 'Hello World',
    ),
  );
}
