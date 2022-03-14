import 'package:flutter/material.dart';

class Headline extends Padding {
  Headline(
    BuildContext context,
    String text, {
    Key? key,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(vertical: 16.0),
  }) : super(
          key: key,
          padding: padding,
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline5,
          ),
        );
}
