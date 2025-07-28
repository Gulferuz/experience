import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {SystemChannels.textInput.invokeMethod('TextInput.hide');},
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            backgroundColor: Colors.black,
            elevation: 2,
            title: Row(
              children: <Widget>[
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(Icons.arrow_back),
                // ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Search by keywords',
                      hintStyle: GoogleFonts.ubuntu(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFFFFFFF)),
                      fillColor: Colors.black,
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.close))
            ],
          ),
        ),
      ),
    );
  }
}
