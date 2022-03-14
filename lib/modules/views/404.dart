// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/util/util.dart';
import 'package:portfolio/widgets/widgets.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
              top: 24.0,
              right: 24.0,
              child: SwitchThemeIconButton(),
            ),
            Center(
              child: ResponsiveLayoutBuilder(
                small: (context, _) => buildNotFound(context),
                medium: (context, child) => child!,
                large: (context, child) => child!,
                child: (_) {
                  return buildNotFound(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNotFound(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      margin: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '404\nPage Not Found',
            style: Theme.of(context).textTheme.headline4,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 16.0,
            ),
            child: Text(
              'We\'re sorry, the page you requested could not be found.\nPlease go back to the homepage.',
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            child: const Text('GO HOME'),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(Routes.root, (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
