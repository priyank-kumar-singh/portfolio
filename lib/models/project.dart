import 'package:portfolio/config/config.dart';

import 'work.dart';
import 'work_prop.dart';

class ProjectItem extends WorkItem {
  final List<WorkProp> details;
  final List<WorkLink> links;

  ProjectItem({
    required String title,
    required String asset,
    required String route,
    String? description,
    this.details = const [],
    this.links = const [],
  }) : super(
    title: title,
    asset: asset,
    url: route,
    description: description ?? details.first.value,
  ) {
    Routes.projectRoutes.add(route);
  }
}
