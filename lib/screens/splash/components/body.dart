import 'package:flutter/material.dart';
import 'package:laf_1/constants.dart';
import 'package:laf_1/screens/sign_in/sign_in_screen.dart';
import 'package:laf_1/size_config.dart';

import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 756,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.00, -1.00),
              end: Alignment(0, 1),
              colors: [
                Color(0xECFF9900),
                Color(0xFFFDA829),
              ],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 113,
                top: 86,
                child: Container(
                  width: 134,
                  height: 65,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 11,
                        child: Container(
                          width: 134,
                          height: 41.36,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 6,
                                top: 4,
                                child: Container(
                                  width: 121.74,
                                  height: 37.36,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/images/logo.png',
                                      alignment: Alignment.topCenter,
                                    ),
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
              ),
              Positioned(
                left: 62,
                top: 173,
                child: Container(
                  width: 243,
                  height: 243,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image 1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 80,
                top: 416,
                child: SizedBox(
                  width: 201,
                  height: 49,
                  child: Text(
                    'We are searching for your lost items',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 112,
                top: 544,
                child: Container(
                  width: 145,
                  height: 50,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/upes.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                ),
              ),
              // Align the button within the yellow background
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignInScreen.routeName);
                  },
                  child: const Text('Sign In'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  AnimatedContainer buildDot({int? index}) {
    index ??= 0; // Provide a default value if index is null
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
