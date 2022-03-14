import 'package:flutter/material.dart';

import 'config/config.dart';
import 'constants/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    appTheme = AppTheme()
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Info.title,
      initialRoute: Routes.root,
      routes: RouteConfig.routes,
      onGenerateRoute: RouteHandler.generateRoute,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: appTheme.themeMode,
    );
  }
}
