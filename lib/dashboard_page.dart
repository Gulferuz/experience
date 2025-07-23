import 'package:flutter/material.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final List<Widget> widgetOptions =  [
    HomePage(),
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
        backgroundColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: _selectedIndex,
        // onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(

              icon: Image.asset('assets/icons/document.png',color: Colors.black,),
              label:'Contracts',
          ),BottomNavigationBarItem(
              icon: Image.asset('assets/icons/document.png'),
              label:'Contracts',
          ),BottomNavigationBarItem(
              icon: Image.asset('assets/icons/document.png'),
              label:'Contracts',
          ),BottomNavigationBarItem(
              icon: Image.asset('assets/icons/document.png'),
              label:'Contracts',
          ),BottomNavigationBarItem(
              icon: Image.asset('assets/icons/document.png'),
              label:'Contracts',
          ),
        ],
      ),
    );
  }
}
