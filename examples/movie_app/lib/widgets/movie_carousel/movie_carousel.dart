import 'package:stac_models/actions/network_request/stac_network_request.dart';

class MovieCarousel {
  MovieCarousel({required this.request});

  final StacNetworkRequest request;

  factory MovieCarousel.fromJson(Map<String, dynamic> json) {
    return MovieCarousel(request: StacNetworkRequest.fromJson(json['request']));
  }

  Map<String, dynamic> toJson() {
    return {'request': request.toJson()};
  }
}
