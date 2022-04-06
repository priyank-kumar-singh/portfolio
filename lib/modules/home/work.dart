import 'package:flutter/material.dart';
import 'package:portfolio/constants/const.dart';
import 'package:portfolio/models/models.dart';
import 'package:portfolio/util/util.dart';

import '../widgets/widgets.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ..._buildSection(context, 'Projects', Work.projects)
        ],
      ),
    );
  }

  List<Widget> _buildSection(BuildContext context, String title, List<WorkItem> items) {
    return [
      Align(
        alignment: Alignment.centerLeft,
        child: Headline(
          context,
          title,
          padding: const EdgeInsets.all(16.0),
        ),
      ),
      ResponsiveLayoutBuilder(
        small: (context, child) => child!,
        medium: (context, child) => child!,
        large: (context, child) => child!,
        child: (size) {
          late final int crossAxisCount;
          late final double aspectRatio;

          if (size == ResponsiveLayoutSize.small) {
            crossAxisCount = 1;
            aspectRatio = 11 / 9;
          } else if (size == ResponsiveLayoutSize.medium) {
            crossAxisCount = 3;
            aspectRatio = 12 / 9;
          } else {
            crossAxisCount = 4;
            aspectRatio = 12 / 9;
          }

          return GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: aspectRatio,
            crossAxisCount: crossAxisCount,
            children: _buildCardItem(context, items),
          );
        },
      ),
    ];
  }

  List<Widget> _buildCardItem(
    BuildContext context,
    List<WorkItem> items,
  ) {
    return [
      ...items.map((item) {
        return WorkCard(
          context: context,
          image: item.asset,
          title: item.title,
          description: item.description,
          url: item.url,
          borderRadius: 4.0,
          constrainCard: true,
          margin: const EdgeInsets.all(16.0),
        );
      }).toList(),
    ];
  }
}
