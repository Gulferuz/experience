import 'package:experience/filter_page.dart';
import 'package:experience/search_page.dart';
import 'package:experience/dashboard_page.dart';
import 'package:experience/second_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Contracts(),
        '/Contracts': (BuildContext context) => Contracts(),
        '/Search': (BuildContext context) => Search(),
        '/Filters': (BuildContext context) => Filters(),
        '/Second': (BuildContext context) => Second(),

      },

      debugShowCheckedModeBanner: false,
      // home: Contracts(),
    );
  }
}

class Contracts extends StatelessWidget {
  const Contracts({super.key});

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
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Filters');
                },
                child: Image.asset('assets/icons/filter.png')),
            Image.asset('assets/icons/line.png'),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Search');
              },
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
                  // daysOfWeekStyle: DaysOfWeekStyle(
                  //   weekdayStyle: TextStyle(color: Colors.red),
                  //   weekendStyle: TextStyle(color: Colors.red),
                  // ),
                  calendarStyle: CalendarStyle(
                    isTodayHighlighted: false,
                  ),
                  calendarFormat: CalendarFormat.week,
                  headerVisible: false,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00A795),
                      ),
                      child: Text(
                        'Contracts',
                        style: GoogleFonts.ubuntu(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFFFFFFF)),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      child: Text(
                        'Invoice',
                        style: GoogleFonts.ubuntu(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFFFFFFF)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 148,
                  width: 343,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(6.0),
                        bottomLeft: Radius.circular(6.0),
                        topLeft: Radius.circular(6.0),
                        topRight: Radius.circular(6.0)),
                    color: Color(0xFF2A2A2D),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset('assets/icons/paper.png'),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '№ 154',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF49B7A526),
                              ),
                              child: Text(
                                'Paid',
                                style: GoogleFonts.ubuntu(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF49B7A5)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Fish:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Yoldosheva Ziyoda',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Amount:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '1,200,000 UZS',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Last invoice:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '№ 156',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Number of invoices:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '6',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '31.01.2021',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF999999)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 148,
                  width: 343,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(6.0),
                        bottomLeft: Radius.circular(6.0),
                        topLeft: Radius.circular(6.0),
                        topRight: Radius.circular(6.0)),
                    color: Color(0xFF2A2A2D),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset('assets/icons/paper.png'),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '№ 153',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF49B7A526),
                              ),
                              child: Text(
                                'In process',
                                style: GoogleFonts.ubuntu(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFFFDAB2A)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Fish:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Seulki Lee',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Amount:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '1,250,000 UZS',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Last invoice:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '№ 156',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Number of invoices:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '5',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '31.01.2021',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF999999)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 148,
                  width: 343,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(6.0),
                        bottomLeft: Radius.circular(6.0),
                        topLeft: Radius.circular(6.0),
                        topRight: Radius.circular(6.0)),
                    color: Color(0xFF2A2A2D),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset('assets/icons/paper.png'),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '№ 155',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF8537926),
                              ),
                              child: Text(
                                'Rejected by Payme',
                                style: GoogleFonts.ubuntu(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFFFF426D)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Fish:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Seulki Lee',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Amount:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '1,200,000 UZS',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Last invoice:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '№ 151',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Number of invoices:',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFE7E7E7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '4',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF999999),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '31.01.2021',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF999999)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Loading...',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF00A795)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Second');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF00A795),
                  ),
                  child: Text(
                    'Load more',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
