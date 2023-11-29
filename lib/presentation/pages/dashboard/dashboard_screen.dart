import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Text("test")],
      ),
    );
  }
}

List<String> navIconSrc = [
  "assets/icons/Lock.svg",
  "assets/icons/Charge.svg",
  "assets/icons/Temp.svg",
  "assets/icons/Tyre.svg"
];

class BottomNavBarDashboard extends StatelessWidget {
  const BottomNavBarDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: List.generate(
        navIconSrc.length,
        (index) => const BottomNavigationBarItem(
          icon: Icon(Icons.abc),
        ),
      ),
    );
  }
}
