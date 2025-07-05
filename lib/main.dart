
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/challenges_screen.dart';
import 'screens/statistic_screen.dart';
import 'screens/settings_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(

        scaffoldBackgroundColor: const Color(0xff121212),

        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xff121212),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          elevation: 0,
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,

      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 1;

  final List<Widget> _screens = const [
    ChallengesScreen(),
    HomeScreen(),
    StatisticScreen(),
    SettingsScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),

      appBar: AppBar(
        title: const Text('Famble', style: TextStyle(fontSize: 25, fontFamily: 'Arial')),
        centerTitle: true,
        backgroundColor: const Color(0xff121212),
      ),

      body: _screens[_selectedIndex],

      bottomNavigationBar: Container(
        color: const Color(0xff121212),

        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: _onTap,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.checklist), label: 'Challenges'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.analytics), label: 'Statistic'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),

    );
  }
}
