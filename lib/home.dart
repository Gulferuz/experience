import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle(color: Colors.grey),
            weekendStyle: TextStyle(color: Colors.grey),
          ),
          calendarStyle: CalendarStyle(

          ),
          calendarFormat: CalendarFormat.week,
          headerVisible: false,
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
        ),
      ],
    );
  }
}
