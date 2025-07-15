import 'package:stac_export/core/stac_export.dart';
import 'package:stac_export/widgets/stac_scaffold/stac_scaffold.dart';
import 'package:stac_export/widgets/stac_text/stac_text.dart';

void main() {
  final text = StacScaffold(
    body: StacText(
      data: 'Hello, MO!',
      style: StacTextStyle(
        color: '#FF0000',
        fontSize: 18,
      ),
    ),
  );

  print(StacExport.toJsonString(text, pretty: true));
}
