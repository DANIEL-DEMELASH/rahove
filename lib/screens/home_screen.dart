import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            height: 550,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(71, 118, 230, 0.7),
                    Color.fromRGBO(142, 84, 233, 0.82)
                  ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          shape: BoxShape.circle),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/Rectangle324.png'),
                        radius: 30,
                      ),
                    ),
                    Text(
                      'Home',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 24),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/menu.png',
                        width: 30,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Hello Soliana',
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Let\'s check our status',
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                            backgroundImage: AssetImage('assets/feres.png')),
                        title: Text('Feres Transport',
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                        subtitle: Text(
                          'https://www.feres.com',
                          style: GoogleFonts.poppins(
                              color: Colors.grey, fontSize: 10),
                        ),
                        trailing: const Image(
                          image: AssetImage('assets/option.png'),
                          width: 25,
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                        color: Color(0xff858585),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListView(
            children: const [],
          )
        ],
      ),
    );
  }
}
