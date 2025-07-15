abstract class StacElement {
  Map<String, dynamic> toJson();
}

abstract class StacWidget extends StacElement {
  String get type;
}
