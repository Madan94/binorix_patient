import 'package:flutter/material.dart';
// import 'screens/home_screen.dart';
// import 'screens/search_screen.dart';
// import 'screens/notifications_screen.dart';
import '../../Profile/profile_screen.dart';
import '../../live prescription/live_prescription_screen.dart';
import '../../manage prescription/manage_prescription.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ManagePrescription(),
    LivePrescriptionScreen(),
    
    ProfileScreen(),
    // SearchScreen(),
    // NotificationsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_history_outlined),
            label: "Manage Priscription",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_history_outlined),
            label: "Manage Live priscription",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}