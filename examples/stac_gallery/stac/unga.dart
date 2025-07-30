import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/widgets/widgets.dart';

StacWidget ungaScreen() {
  return StacScaffold(
    appBar: StacAppBar(
      title: StacText(data: 'Unga bunga punga'),
    ),
    body: StacCenter(
      child: StacText(data: 'Unga'),
    ),
  );
}
