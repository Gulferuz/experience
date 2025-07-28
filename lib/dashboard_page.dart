import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final List<Widget> widgetOptions = [
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.black,
      body: SafeArea(child: widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        selectedItemColor: Color(0xFFF2F2F2),
        unselectedItemColor: Color(0xFFA6A6A6),
        currentIndex: _selectedIndex,
        // onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/first.png',
            ),
            label: 'Contracts',
            activeIcon: Image.asset('assets/icons/one.png')
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/second.png'),
            label: 'History',
            activeIcon:Image.asset('assets/icons/two.png')
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/third.png'),
            activeIcon: Image.asset('assets/icons/three.png'),
            label: 'New',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/four.png'),
            activeIcon: Image.asset('assets/icons/fourth.png'),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/five.png'),
            activeIcon: Image.asset('assets/icons/fifth.png'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
