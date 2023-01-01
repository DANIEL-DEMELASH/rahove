import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TestWidget(),
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Rahove',
        style: bigTextStyle,
      )),
    );
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      0.0,
      0.0,
      0.0,
      1.0,
      0.0,
      0.0,
      0.5,
      0.0,
      0.7,
      0.0,
      0.0,
      0.6,
      0.6,
      0.0,
      2.0,
      0.0,
      0.0,
      0.6,
      0.0,
      0.0
    ];
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 60, left: 20, right: 20, bottom: 20),
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
                            backgroundImage:
                                AssetImage('assets/Rectangle324.png'),
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
                      height: 10,
                    ),
                    Text(
                      'Hello Soliana',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Let\'s check our status',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/feres.png')),
                              title: Text('Feres Transport',
                                  style: GoogleFonts.poppins(fontSize: 14)),
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
                            ),
                            Row(
                              children: const [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Text('500')),
                                Expanded(
                                  child: DottedLine(
                                    dashColor: Colors.grey,
                                    dashLength: 12,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Sparkline(
                                data: data,
                                lineColor: Colors.green,
                              ),
                            ),
                            Row(
                              children: const [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Center(
                                      child: Text('0'),
                                    )),
                                Expanded(
                                  child: DottedLine(
                                    dashColor: Colors.grey,
                                    dashLength: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                children: [
                  Text(
                    'Recent operations',
                    style: GoogleFonts.poppins(color: Colors.deepPurple),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Today',
                    style:
                        TextStyle(fontSize: 10, backgroundColor: Colors.grey),
                  ),
                  Container(
                    color: const Color.fromRGBO(133, 133, 133, 0.1),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/yonas.png'),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Yonas Amare'),
                          Text('+ 1000.2 ETB')
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('+251 939 09 0908'),
                          Text('04:08 AM')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: const Color.fromRGBO(133, 133, 133, 0.1),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/yonas.png'),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Yonas Amare'),
                          Text('+ 1000.2 ETB')
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('+251 939 09 0908'),
                          Text('04:08 AM')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Yesterday',
                    style:
                        TextStyle(fontSize: 10, backgroundColor: Colors.grey),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    color: const Color.fromRGBO(133, 133, 133, 0.1),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/yonas.png'),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Yonas Amare'),
                          Text('+ 1000.2 ETB')
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('+251 939 09 0908'),
                          Text('04:08 AM')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: const Color.fromRGBO(133, 133, 133, 0.1),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/yonas.png'),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Yonas Amare'),
                          Text('+ 1000.2 ETB')
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('+251 939 09 0908'),
                          Text('04:08 AM')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: const Color.fromRGBO(133, 133, 133, 0.1),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/yonas.png'),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Yonas Amare'),
                          Text('+ 1000.2 ETB')
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('+251 939 09 0908'),
                          Text('04:08 AM')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
