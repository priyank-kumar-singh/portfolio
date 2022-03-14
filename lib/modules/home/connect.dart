import 'package:flutter/material.dart';
import 'package:portfolio/constants/const.dart';
import 'package:portfolio/util/util.dart';
import 'package:portfolio/widgets/widgets.dart';

class ConnectPage extends StatelessWidget {
  const ConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      small: (context, _) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buildLinks(context),
        );
      },
      medium: (context, child) => child!,
      large: (context, child) => child!,
      child: (size) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(48.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: {
                'GitHub': ExternalLinks.github,
                'LinkedIn': ExternalLinks.linkedin,
                'Medium': ExternalLinks.medium,
                'Instagram': ExternalLinks.instagram,
                'Twitter': ExternalLinks.twitter,
                'YouTube': ExternalLinks.youtube,
              }.entries.map((e) {
                final subtitle = e.value.substring(e.value.lastIndexOf('/') + 1);
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      URLHelper.open(e.value);
                    },
                    child: Card(
                      child: SizedBox.square(
                        dimension: 200,
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.asset(
                                AssetPath.icons + e.key.toLowerCase() + '.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            ListTile(
                              mouseCursor: SystemMouseCursors.click,
                              title: Text(
                                e.key,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              subtitle: Text(
                                (subtitle.startsWith('@') ? '': '@') + subtitle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  List<SocialMediaButton> buildLinks(BuildContext context) {
    return const [
      SocialMediaButton(
        SocialMediaIcons.github,
        url: ExternalLinks.github,
      ),
      SocialMediaButton(
        SocialMediaIcons.linkedIn,
        url: ExternalLinks.linkedin,
      ),
      SocialMediaButton(
        SocialMediaIcons.medium,
        url: ExternalLinks.medium,
      ),
      SocialMediaButton(
        SocialMediaIcons.instagram,
        url: ExternalLinks.instagram,
      ),
      SocialMediaButton(
        SocialMediaIcons.twitter,
        url: ExternalLinks.twitter,
      ),
      SocialMediaButton(
        SocialMediaIcons.youtube,
        url: ExternalLinks.youtube,
      ),
    ];
  }
}
