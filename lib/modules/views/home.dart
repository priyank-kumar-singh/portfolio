import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/const.dart';
import 'package:portfolio/util/util.dart';
import 'package:portfolio/widgets/widgets.dart';

import '../home/about.dart';
import '../home/connect.dart';
import '../home/skills.dart';
import '../home/work.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const animationDuration = 500;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bottomBarItems = {
    'About': Icons.person_outline_rounded,
    'Skills': FontAwesomeIcons.solidChartBar,
    'Work': Icons.work_outline,
    'Connect': Icons.contact_page_outlined,
  };

  final appBarTitles = [
    'About Me',
    'My Skills',
    'My Work',
    'Let\'s Connect',
  ];

  int currentPage = 0;

  late final PageController pageController;

  void onPageChange(index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: HomeScreen.animationDuration),
      curve: Curves.easeIn,
    );
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: currentPage,
      keepPage: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      small: (context, child) => Scaffold(
        appBar: buildAppBarSmall(context),
        extendBodyBehindAppBar: true,
        body: child,
        bottomNavigationBar: buildBottomNavigationBar(context),
      ),
      medium: (context, child) => Scaffold(
        appBar: buildAppBar(context),
        body: child,
      ),
      large: (context, child) => Scaffold(
        appBar: buildAppBar(context),
        body: child,
      ),
      child: (size) {
        return SafeArea(
          key: Keys.scaffoldBody,
          child: PageView(
            children: [
              Builder(
                builder: (context) {
                  return AboutPage(
                    onConnect: () => onPageChange(3),
                  );
                }
              ),
              const SkillsPage(),
              const WorkPage(),
              const ConnectPage(),
            ],
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            physics: const NeverScrollableScrollPhysics(),
          ),
        );
      },
    );
  }

  AppBar? buildAppBarSmall(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      title: currentPage >= 0 ? Text(appBarTitles.elementAt(currentPage)) : null,
      actions: const [
        SwitchThemeIconButton(),
        SizedBox(width: 24.0),
      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      title: currentPage >= 0 ? Text(appBarTitles.elementAt(currentPage)) : null,
      actions: [
        ...List.generate(4, (index) => index).map((e) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(
              child: Text(bottomBarItems.entries.elementAt(e).key),
              onPressed: () => onPageChange(e),
              style: const ButtonStyle(
                // splashFactory:
              ),
            ),
          );
        }).toList(),
        const SizedBox(width: 24.0),
        const SwitchThemeIconButton(),
        const SizedBox(width: 24.0),
      ],
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: bottomBarItems.entries.map((e) {
        return BottomNavigationBarItem(
          icon: Icon(
            e.value,
            size: e.value.runtimeType != IconData ? 20.0 : null,
          ),
          label: e.key,
          tooltip: '',
        );
      }).toList(),
      currentIndex: currentPage,
      onTap: onPageChange,
    );
  }
}
