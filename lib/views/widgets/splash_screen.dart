import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: Container(
        width: 428,
        height: 926,
        padding: const EdgeInsets.only(bottom: 210),
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Color(0xFFFFFCFA)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 428,
              height: 44,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 54,
                    height: 21,
                    padding: const EdgeInsets.only(top: 1),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 54,
                          height: 20,
                          child: Text(
                            '9:41',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0.09,
                              letterSpacing: -0.50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 66.66,
                    height: 11.34,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 42.33,
                          top: 0,
                          child: SizedBox(
                            width: 24.33,
                            height: 11.33,
                            child: Stack(children: []),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 172),
            SizedBox(
              width: 351,
              height: 500,
              child: Stack(
                children: [
                  const Positioned(
                    left: 11,
                    top: 0,
                    child: SizedBox(
                      width: 324,
                      height: 267,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 36,
                            top: 162,
                            child: Text(
                              'Welcome to MCard',
                              style: TextStyle(
                                color: Color(0xFF252422),
                                fontSize: 32,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 207,
                            child: SizedBox(
                              width: 324,
                              height: 60,
                              child: Text(
                                'Sit sit mattis eu volutpat eget lorem convallis consequat. Varius enim malesuada phasellus at. Volutpat sed in viverra.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF403D39),
                                  fontSize: 14,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 320,
                    child: SizedBox(
                      width: 351,
                      height: 180,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Sign In',
                                  style: TextStyle(
                                    color: Color(0xFF252422),
                                    fontSize: 24,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 24),
                                SizedBox(
                                  width: 351,
                                  height: 46,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 351,
                                          height: 46,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              left: BorderSide(
                                                  color: Color(0xFF403D39)),
                                              top: BorderSide(
                                                  color: Color(0xFF403D39)),
                                              right: BorderSide(
                                                  color: Color(0xFF403D39)),
                                              bottom: BorderSide(
                                                  width: 2,
                                                  color: Color(0xFF403D39)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 16,
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4.50),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 15,
                                                height: 24,
                                                child: Stack(children: []),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 36,
                                        top: 22,
                                        child: Text(
                                          'Phone No.',
                                          style: TextStyle(
                                            color: Color(0xFF403D39),
                                            fontSize: 14,
                                            fontFamily: 'Source Sans Pro',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 32),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 12),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD35F32),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFD35F32)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Go To Account',
                                  style: TextStyle(
                                    color: Color(0xFFFFFCFA),
                                    fontSize: 16,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Transform(
                                  transform: Matrix4.identity()
                                    ..translate(0.0, 0.0)
                                    ..rotateZ(-3.14),
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: []),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
