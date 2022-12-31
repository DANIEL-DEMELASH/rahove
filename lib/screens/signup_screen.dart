import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
                child: GradientText(
              'Welcome',
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w700),
              gradientType: GradientType.linear,
              gradientDirection: GradientDirection.ttb,
              radius: .4,
              colors: const [
                Color.fromRGBO(151, 71, 255, 1),
                Color.fromRGBO(59, 19, 111, 0.66)
              ],
            )),
            Center(
              child: Text(
                'become a member of our platform',
                style: GoogleFonts.poppins(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                'Full name',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: const TextField(
                decoration:
                    InputDecoration(filled: true, border: InputBorder.none),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                'Email',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: const TextField(
                decoration:
                    InputDecoration(filled: true, border: InputBorder.none),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                'Password',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: const TextField(
                decoration:
                    InputDecoration(filled: true, border: InputBorder.none),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(151, 71, 255, 1),
                          Color.fromRGBO(59, 19, 111, 0.66)
                        ]),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  child: Text(
                    'Sign up',
                    style:
                        GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Expanded(child: Divider()),
                Text(
                  ' Sign up with ',
                  style: GoogleFonts.poppins(color: const Color(0xff858585)),
                ),
                const Expanded(child: Divider()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {}, icon: Image.asset('assets/google.png')),
                IconButton(
                    onPressed: () {}, icon: Image.asset('assets/facebook.png')),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/apple-logo.png')),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Already have an account? ',
                    style: GoogleFonts.poppins(color: Colors.black)),
                TextSpan(
                    text: 'Log in',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pop(context);
                      },
                    style: GoogleFonts.poppins(color: Colors.deepPurple))
              ]),
            )),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
