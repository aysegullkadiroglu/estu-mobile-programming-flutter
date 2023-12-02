import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:bim493_project/pages/chatPage.dart';
import 'package:bim493_project/pages/currencyConverter.dart';
import 'package:bim493_project/pages/explorePage.dart';
import 'package:bim493_project/pages/newsThumbnail.dart';
import 'package:bim493_project/utils/customColors.dart';

void main() => runApp(FluidNavBarDemo());

class FluidNavBarDemo extends StatefulWidget {
  @override
  State createState() {
    return _FluidNavBarDemoState();
  }
}

class _FluidNavBarDemoState extends State<FluidNavBarDemo> {
  late Widget _child;

  @override
  void initState() {
    super.initState();
    _child = ExplorePage();
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        body: _child,
        bottomNavigationBar: FluidNavBar(
          icons: [
            FluidNavBarIcon(
                icon: Icons.explore_outlined,
                backgroundColor: customColors.customTextColor,
                extras: {"label": "explore"}),
            FluidNavBarIcon(
                icon: Icons.currency_exchange_rounded,
                backgroundColor: customColors.customTextColor,
                extras: {"label": "converter"}),
            FluidNavBarIcon(
                icon: Icons.chat_outlined,
                backgroundColor: customColors.customTextColor,
                extras: {"label": "chat"}),
            FluidNavBarIcon(
                icon: Icons.newspaper_outlined,
                backgroundColor: customColors.customTextColor,
                extras: {"label": "news"}),
          ],
          onChange: _handleNavigationChange,
          style: FluidNavBarStyle(
            iconUnselectedForegroundColor: Colors.white,
          ),
          scaleFactor: 1.5,
          defaultIndex: 0, // Set the default index to 0 (Explore tab)
          itemBuilder: (icon, item) => Semantics(
            label: icon.extras!["label"],
            child: item,
          ),
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = ExplorePage();
          break;
        case 1:
          _child = CurrencyConverter();
          break;
        case 2:
          _child = ChatPage();
          break;
        case 3:
          _child = NewsThumbnail();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: _child,
      );
    });
  }
}
