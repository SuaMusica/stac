import 'package:stac_models/stac_models.dart';
import 'package:stac_models/types/stac_text_types.dart';

StacWidget homeScreen() {
  return StacScaffold(
    body: StacCenter(
      child: StacContainer(
        width: 200,
        height: 200,
        decoration: StacBoxDecoration(
          color: StacColors.pink,
        ),
        child: StacCenter(
          child: StacText(
            data: 'Hello World - UPDATED!',
            style: StacTextStyle(
              fontSize: 17,
              fontWeight: StacFontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}
