import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:workstation_commander/navigation/path.dart';
import 'package:workstation_commander/pages/login.dart';
import 'package:workstation_commander/pages/launch_task.dart';

class AppRouteDelegate extends RouterDelegate<AppRouteConfig>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRouteConfig> {
  final GlobalKey<NavigatorState> navigatorKey;
  AppRouteConfig config = AppRouteConfig.getInstance();
  AppRouteDelegate(): navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(child: Login()),
        if (config.type == AppRouteType.Task)
          MaterialPage(child: LaunchTask())
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRouteConfig configuration) async {
    config = configuration;
  }
}
