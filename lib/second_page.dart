import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        selectedItemColor: Color(0xFFF2F2F2),
        unselectedItemColor: Color(0xFFA6A6A6),
        // onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/first.png',
              ),
              label: 'Contracts',
              activeIcon: Image.asset('assets/icons/one.png')),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/second.png'),
              label: 'History',
              activeIcon: Image.asset('assets/icons/two.png')),
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
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.black,
          elevation: 2,
          title: Row(
            children: <Widget>[
              Image.asset('assets/icons/ellipse.png'),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Contracts',
                style: GoogleFonts.ubuntu(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
          actions: [
            Image.asset('assets/icons/filter.png'),
            Image.asset('assets/icons/line.png'),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'February, 2021',
                      style: GoogleFonts.ubuntu(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFFDADADA),
                      ),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xFFD1D1D1),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xFFD1D1D1),
                      ),
                    ),
                  ],
                ),
                TableCalendar(
                  daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(color: Color(0xFFD2D2D2)),
                    weekendStyle: TextStyle(color: Color(0xFFD2D2D2)),
                  ),
                  calendarStyle: CalendarStyle(
                    todayTextStyle: GoogleFonts.ubuntu(
                      color: Color(0xFFD2D2D2),
                    ),
                    selectedTextStyle: GoogleFonts.ubuntu(
                      color: Color(0xFFD2D2D2),
                    ),
                    rangeEndTextStyle: GoogleFonts.ubuntu(
                      color: Color(0xFFD2D2D2),
                    ),
                    outsideTextStyle: GoogleFonts.ubuntu(
                      color: Color(0xFFD2D2D2),
                    ),
                    defaultTextStyle: GoogleFonts.ubuntu(
                      color: Color(0xFFD2D2D2),
                    ),
                    rangeStartTextStyle: GoogleFonts.ubuntu(
                      color: Color(0xFFD2D2D2),
                    ),
                    withinRangeTextStyle: GoogleFonts.ubuntu(
                      color: Color(0xFFD2D2D2),
                    ),
                    weekendTextStyle: GoogleFonts.ubuntu(
                      color: Color(0xFFD2D2D2),
                    ),
                    isTodayHighlighted: false,
                  ),
                  calendarFormat: CalendarFormat.week,
                  headerVisible: false,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
                const SizedBox(height: 146,),
                Image.asset('assets/icons/document.png'),
                const SizedBox(height: 8,),
                Text('No contracts are made',style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF)
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
