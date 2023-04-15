import 'package:flutter/material.dart';
import 'package:gobi_portfolio/constants.dart';
import 'package:gobi_portfolio/tabs/aboutme_tab.dart';
import 'package:gobi_portfolio/tabs/contact_tab.dart';
import 'package:gobi_portfolio/tabs/home_tab.dart';
import 'package:gobi_portfolio/tabs/project_tab.dart';
import 'package:tab_container/tab_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int selectedPage;
  late TabContainerController _tabController;

  @override
  void initState() {
    _tabController = TabContainerController(length: 4);
    selectedPage = _tabController.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            minimum: const EdgeInsets.only(top: 10),
            child: Stack(alignment: Alignment.topLeft, children: [
              TabContainer(
                color: background,
                tabStart: 0.08,
                tabEnd: 0.92,
                tabCurve: Curves.bounceIn,
                tabDuration: const Duration(milliseconds: 200),
                selectedTextStyle: subtitleTextStyle,
                unselectedTextStyle: normalTextStyle,
                tabs: const ['Home', 'About Me', 'Projects', 'Contact'],
                children: [HomeTab(), AboutmeTab(), ProjectTab(), ContactTab()],
              ),
            ])));
  }
}
