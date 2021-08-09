enum AppRouteType {
  Main,
  Task,
  Unknown,
}

class AppRouteConfig {
  final AppRouteType type;
  final String? targetWorkstation;
  final String? targetTask;

  AppRouteConfig.getInstance()
      : type = AppRouteType.Unknown,
        targetWorkstation = null,
        targetTask = null;

  AppRouteConfig.main()
      : type = AppRouteType.Main,
        targetWorkstation = null,
        targetTask = null;

  AppRouteConfig.launch(String this.targetTask, String this.targetWorkstation)
      : type = AppRouteType.Task;
}
