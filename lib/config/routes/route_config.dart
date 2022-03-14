import 'package:flutter/widgets.dart';

import '../../modules/modules.dart';
import 'routes.dart';

abstract class RouteConfig {
  static Map<String, Widget Function(BuildContext)> get routes => {
    Routes.root: (_) => const HomeScreen(),
  };
}
