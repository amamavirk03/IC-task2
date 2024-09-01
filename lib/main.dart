import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:owntask1/calander.dart';
import 'package:owntask1/courseCard.dart';
import 'package:owntask1/mainCard.dart';
import 'package:owntask1/notifications.dart';
import 'package:owntask1/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const MyHomePage(),
    const NotificationScreen(),
    const CalendarPage(),
    const SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex, // The currently selected item
        onTap: _onItemTapped, // Handle item tap
        items: [
          _buildBottomNavigationBarItem(Icons.home_outlined, "Home", 0),
          _buildBottomNavigationBarItem(
              Icons.notifications, "Notifications", 1),
          _buildBottomNavigationBarItem(
              Icons.calendar_today_outlined, "Calendar", 2),
          _buildBottomNavigationBarItem(Icons.settings_outlined, "Settings", 3),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _selectedIndex == index ? Colors.black : Colors.transparent,
        ),
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          icon,
          color: _selectedIndex == index ? Colors.white : Colors.black,
        ),
      ),
      label: label,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30.0,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                    ),
                    width: 130,
                    height: 40,
                    child: const Center(
                      child: Text(
                        "Connect to class",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Nice streak,\nAndrew",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 35, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Maincard(
                    maintext: "Days\nin training",
                    noOfdays: "225",
                    endtext: "24 days in a row",
                    containercolor: Color(0xfff8e9c8),
                    smallcontainercolor: Color(0xffecdab3),
                  ),
                  Maincard(
                    maintext: "Complete\ncourses",
                    noOfdays: "12",
                    endtext: "2 in this month",
                    containercolor: Color(0xffDEECEC),
                    smallcontainercolor: Color(0xffC8DCDC),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today classes",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const Icon(Icons.arrow_forward)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CourseCard(
                        maintext: "Design system in figma",
                        maincolor: Color(0xffDED3FD),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CourseCard(
                        maintext: "Animation in protopie",
                        maincolor: Color(0xffDED3FD),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
