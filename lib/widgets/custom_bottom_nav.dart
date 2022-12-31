import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _currentIndex = 0;

  void changeTab(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomeScreen(),
      const Scaffold(),
      const Scaffold(),
      const Scaffold()
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) => changeTab(value),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/home.png',
                  width: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/bar-chart.png',
                  width: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/note.png',
                  width: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/user.png',
                  width: 20,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
