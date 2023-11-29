import 'package:flutter/material.dart';
import 'package:flutter_playground/presentation/pages/dashboard/bottomnav_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svg_flutter/svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App Playground"),
      ),
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
  DashboardIcon(title: "Explore UI", icon: "assets/icons/list.svg")
];

class BottomNavBarDashboard extends ConsumerWidget {
  const BottomNavBarDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNav = ref.watch(indexBottomNavProvider);

    return BottomNavigationBar(
      onTap: (value) =>
          ref.read(indexBottomNavProvider.notifier).update((state) => value),
      currentIndex: indexBottomNav,
      type: BottomNavigationBarType.fixed,
      items: List.generate(
        navIconSrc.length,
        (index) => BottomNavigationBarItem(
          icon: SvgPicture.asset(
            navIconSrc[index].icon,
            width: 40,
            height: 40,
          ),
          label: navIconSrc[index].title,
        ),
      ),
    );
  }
}
