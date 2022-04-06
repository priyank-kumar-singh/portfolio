import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../widgets/widgets.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({ Key? key }) : super(key: key);

  final lineHeight = 10.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...programmingLanguages(context),
            const Divider(),
            ...toolsAndTechnologies(context),
          ],
        ),
      ),
    );
  }

  List<Widget> programmingLanguages(BuildContext context) {
    return [
      Headline(context, 'Programming Languages'),
      buildIndicator(context, 'C++', 10.0, const Color(0xFFFAE519)),
      buildIndicator(context, 'Dart', 10.0, const Color(0xFFD64815)),
      buildIndicator(context, 'Java', 9.0, const Color(0xFF9624ED)),
      buildIndicator(context, 'Kotlin', 8.0, const Color(0xFF15BED6)),
      buildIndicator(context, 'TS', 8.0, const Color(0xFF93FA31)),
      buildIndicator(context, 'Python', 8.0),
      const SizedBox(height: 8.0),
    ];
  }

  List<Widget> toolsAndTechnologies(BuildContext context) {
    return [
      Headline(context, 'Tools and Technologies'),
      Wrap(
        children: [
          buildTechBox(context, 'Flutter', const Color(0xFF93FA31)),
          buildTechBox(context, 'Android', const Color(0xFF2178EB)),
          buildTechBox(context, 'AWS', const Color(0xFF15BED6)),
          buildTechBox(context, 'AWS Amplify', const Color(0xFF9624ED)),
          buildTechBox(context, 'Docker', const Color(0xFFD64815)),
          buildTechBox(context, 'Firebase', const Color(0xFFFAE519)),
          buildTechBox(context, 'MERN Stack', const Color(0xFF13D493)),
          buildTechBox(context, 'MySQL', const Color(0xFFF7165C)),
          buildTechBox(context, 'SQLite', const Color(0xFF2178EB)),
        ],
      ),
      const SizedBox(height: 12.0),
    ];
  }

  Widget buildIndicator(BuildContext context, String title, double value, [Color? color]) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      constraints: const BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 50.0,
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Expanded(
            child: LinearPercentIndicator(
              percent: value / 10,
              progressColor: color,
              animation: true,
              lineHeight: lineHeight,
              barRadius: const Radius.circular(16.0),
            ),
          ),
          const SizedBox(width: 8.0),
          Text(
            '$value'.padLeft(4, ' '),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }

  Widget buildTechBox(BuildContext context, String title, [Color color = const Color(0xFF000000)]) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
