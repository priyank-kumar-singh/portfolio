import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/constants/const.dart';
import 'package:portfolio/util/util.dart';

class AboutPage extends StatelessWidget {
  AboutPage({
    Key? key,
    required this.onConnect,
  }) : super(key: key);

  final VoidCallback? onConnect;

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Assets.images.backgroundGeometric.image(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        Positioned(
          right: 16.0,
          bottom: 24.0,
          child: RotatedBox(
            quarterTurns: -1,
            child: Row(
              children: [
                Text(
                  'Scroll down',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: appTheme.theme.primaryColor,
                      ),
                ),
                const SizedBox(width: 8.0),
                RotatedBox(
                  quarterTurns: 1,
                  child: SizedBox.square(
                    dimension: 24.0,
                    child: Assets.images.mouse.image(
                      color:
                          appTheme.isDark ? appTheme.theme.primaryColor : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          controller: _scrollController,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 24.0),
              Center(
                child: Text(
                  Texts.helloIam,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: Text(
                  Personal.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Center(
                child: Text(
                  Personal.profession,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  backgroundImage: Assets.images.profile,
                  radius: 56.0,
                ),
              ),
              const ResponsiveGap(
                small: 8.0,
                gap: 32.0,
              ),
              ResponsiveLayoutBuilder(
                small: (context, _) {
                  return Column(
                    children: buildTextButtons(context),
                  );
                },
                medium: (context, child) => child!,
                large: (context, child) => child!,
                child: (_) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buildTextButtons(context),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> buildTextButtons(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Download CV'),
          ),
          onPressed: () {
            URLHelper.open(ExternalLinks.resume);
          },
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              width: 1.0,
              color: Color(0xFFe0e4e8),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Lets Connect',
              style: TextStyle(
                letterSpacing: 0.3,
              ),
            ),
          ),
          onPressed: onConnect,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              width: 1.0,
              color: Color(0xFFe0e4e8),
            ),
          ),
        ),
      ),
    ];
  }
}
