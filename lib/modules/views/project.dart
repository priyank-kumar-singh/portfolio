import 'package:flutter/material.dart';
import 'package:portfolio/constants/const.dart';
import 'package:portfolio/models/models.dart';
import 'package:portfolio/util/util.dart';
import 'package:portfolio/widgets/widgets.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context)!.settings.name!;
    final item = Work.projects.firstWhere((e) => e.url == route);

    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: ResponsiveLayoutBuilder(
          small: (context, child) => child!,
          medium: (_, child) => child!,
          large: (_, child) => child!,
          child: (size) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildDescription(context, item.details.first.value),
                buildAsset(context, item.asset),
                ...item.details.sublist(1).map((e) {
                  if (e is WorkAsset) {
                    return buildAsset(context, e.value);
                  } else if (e is WorkTitle) {
                    return buildTitle(context, e.value);
                  } else if (e is WorkRichText) {
                    return buildRichText(context, e.texts);
                  } else if (e is WorkOrderedList) {
                    return buildOrderedList(context, e.texts);
                  } else if (e is WorkUnorderedList) {
                    return buildUnorderedList(context, e.texts);
                  } else {
                    return buildDescription(context, e.value);
                  }
                }).toList(),
                buildLinkButton(context, item.links),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget buildAsset(
    BuildContext context,
    String image, {
    double? height,
    double width = 350,
    BoxFit? fit,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        child: Image.asset(
          image,
          height: height,
          width: width,
          fit: fit,
        ),
      ),
    );
  }

  Widget buildTitle(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline5,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget buildDescription(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Text(
        text,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget buildOrderedList(BuildContext context, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ...items.asMap().entries.map((e) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              bottom: 4.0,
            ),
            child: RichText(
              text: TextSpan(
                text: '${e.key + 1}. ',
                children: [
                  TextSpan(
                    text: e.value,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
                style: Theme.of(context).textTheme.bodyText1,
              ),
              textAlign: TextAlign.justify,
            ),
          );
        }).toList(),
        const SizedBox(height: 12.0),
      ],
    );
  }

  Widget buildUnorderedList(BuildContext context, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ...items.asMap().entries.map((e) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              bottom: 4.0,
            ),
            child: RichText(
              text: TextSpan(
                text: '- ',
                children: [
                  TextSpan(
                    text: e.value,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
                style: Theme.of(context).textTheme.bodyText1,
              ),
              textAlign: TextAlign.justify,
            ),
          );
        }).toList(),
        const SizedBox(height: 12.0),
      ],
    );
  }

  Widget buildRichText(BuildContext context, List<RichTextItem> items) {
    return InteractiveText(
      text: items.map((e) {
        return InteractiveTextItem(
          e.text,
          onTap: e.url == null
              ? null
              : () {
                  URLHelper.open(e.url!);
                },
        );
      }).toList(),
      interactiveTextStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: Colors.blue.shade500,
          ),
      textAlign: TextAlign.justify,
    );
  }

  Widget buildLinkButton(BuildContext context, List<WorkLink> items) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((item) {
          return SocialMediaButton(
            item.iconType,
            url: item.value,
            constrainMinWidth: false,
            margin: const EdgeInsets.only(
              top: 16.0,
              right: 16.0,
              bottom: 8.0,
            ),
          );
        }).toList(),
      ),
    );
  }
}
