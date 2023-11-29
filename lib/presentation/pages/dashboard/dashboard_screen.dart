import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("test"),
        ],
      ),
      bottomNavigationBar: BottomNavBarDashboard(),
    );
  }
}

class DashboardIcon {
  final String title;
  final String icon;

  DashboardIcon({required this.title, required this.icon});
}

List<DashboardIcon> navIconSrc = [
  DashboardIcon(title: "Home", icon: "assets/icons/home.svg"),
  DashboardIcon(title: "Widget", icon: "assets/icons/bolt.svg"),
  DashboardIcon(title: "UI", icon: "assets/icons/list.svg")
];

class BottomNavBarDashboard extends StatelessWidget {
  const BottomNavBarDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: List.generate(
        navIconSrc.length,
        (index) => BottomNavigationBarItem(
          icon: SvgPicture.asset(navIconSrc[index].icon),
          label: navIconSrc[index].title,
        ),
      ),
    );
  }
}
