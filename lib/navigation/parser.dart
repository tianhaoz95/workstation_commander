import 'package:flutter/material.dart';
import 'package:workstation_commander/navigation/path.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRouteConfig> {
  @override
  Future<AppRouteConfig> parseRouteInformation(
      RouteInformation routeInformation) async {
    AppRouteConfig config = AppRouteConfig.getInstance();
    final String location = routeInformation.location ?? "";
    if (location.isEmpty) {
      return config;
    }
    final uri = Uri.parse(location);
    if (uri.pathSegments.length == 0) {
      return AppRouteConfig.main();
    }
    switch (uri.pathSegments[0]) {
      case "launch": {
        return AppRouteConfig.launch('targetTask', 'targetWorkstation');
      }
      default: {
        return AppRouteConfig.getInstance();
      }
    }
  }
}
