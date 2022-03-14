import 'package:flutter/material.dart';

import '../../modules/modules.dart';
import 'routes.dart';

abstract class RouteHandler {
  static Route generateRoute(RouteSettings settings) {
    if (settings.name!.startsWith(Routes.projects)) {
      final route = settings.name!.substring(Routes.projects.length);
      if (Routes.projectRoutes.contains(route)) {
        return routeBuilder(const ProjectDetails(), settings);
      } else {
        return routeBuilder(const PageNotFoundScreen(), settings);
      }
    }

    switch (settings.name) {
      default:
        return routeBuilder(const PageNotFoundScreen(), settings);
    }
  }

  static MaterialPageRoute routeBuilder(Widget route, RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => route, settings: settings);
  }
}
