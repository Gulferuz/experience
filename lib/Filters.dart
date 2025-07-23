import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF141416),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          'Filters',
          style: GoogleFonts.ubuntu(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: const Color(0xFFFFFFFF),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Text(
                'Status',
                style: GoogleFonts.ubuntu(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF999999)),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: <Widget>[
                  Image.asset('assets/icons/tick.png'),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Paid',
                    style: GoogleFonts.ubuntu(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFF2F2F2)),
                  ),
                  const SizedBox(
                    width: 115,
                  ),
                  Image.asset('assets/icons/square.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Rejected by IQ',
                    style: GoogleFonts.ubuntu(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFA6A6A6)),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: <Widget>[
                  Image.asset('assets/icons/square.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'In process',
                    style: GoogleFonts.ubuntu(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFA6A6A6)),
                  ),
                  const Spacer(),
                  Image.asset('assets/icons/square.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Rejected by Payme',
                    style: GoogleFonts.ubuntu(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFA6A6A6)),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Date',
                style: GoogleFonts.ubuntu(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF999999)),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 45,
                    width: 130,
                    decoration: const BoxDecoration(color: Color(0xFF2A2A2D)),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '16.02.2021',
                          style: GoogleFonts.ubuntu(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF999999)),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Icon(
                          Icons.calendar_month_outlined,
                          color: Color(0xFFA5A5A5),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  const Icon(
                    Icons.remove,
                    color: Color(0xFFD1D1D1),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 45,
                    width: 130,
                    decoration: const BoxDecoration(color: Color(0xFF2A2A2D)),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'To',
                          style: GoogleFonts.ubuntu(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF999999)),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.calendar_month_outlined,
                          color: Color(0xFFA5A5A5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
