import 'package:flutter/material.dart';
import '../config/config.dart';
import '../constants/const.dart';
import '../widgets/widgets.dart';

class SwitchThemeIconButton extends StatefulWidget {
  const SwitchThemeIconButton({ Key? key }) : super(key: key);

  @override
  State<SwitchThemeIconButton> createState() => _SwitchThemeIconButtonState();
}

class _SwitchThemeIconButtonState extends State<SwitchThemeIconButton> {
  @override
  Widget build(BuildContext context) {
    return TapDetector(
      child: Tooltip(
        message: Texts.switchTheme,
        child: Icon(
          appTheme.isDark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
        ),
      ),
      onTap: () {
        appTheme.switchTheme();
        setState(() {});
      },
    );
  }
}
