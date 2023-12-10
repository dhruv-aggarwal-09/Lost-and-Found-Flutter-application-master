import 'package:flutter/material.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xECFF9900),
                  Color(0xFFFDA829),
                ],
              ),
            ),
          ),

          // Background image
          // ignore: sized_box_for_whitespace
          Container(
            width: 350,
            height: 300,
            child: Stack(
              children: [
                Positioned(
                  left: 65,
                  top: 60,
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 250,
                    height: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 50,
                          top: 45,
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            width: 140,
                            height: 55,
                            child: Image.asset(
                              'assets/images/logo.png',
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Body
          const Body(),
        ],
      ),
    );
  }
}
