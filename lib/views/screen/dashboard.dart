import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehab_app/views/screen/practice_page.dart';
import 'package:rehab_app/views/screen/profile_page.dart';
import 'package:rehab_app/views/screen/rehab_page.dart';

import '../../viewmodel/page_controller.dart';
import 'homepage.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                HomePage(),
                RehabPage(),
                PracticePage(),
                ProfilePage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: const Color.fromARGB(255, 132, 132, 132),
            selectedItemColor: Colors.black,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[200],
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: Icons.calendar_today_outlined,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: Icons.directions_run_outlined,
                label: 'Rehab',
              ),
              _bottomNavigationBarItem(
                icon: Icons.explore_outlined,
                label: 'Practice',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.person,
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
