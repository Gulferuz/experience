import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Container(
                  height: 148,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1E1E20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
