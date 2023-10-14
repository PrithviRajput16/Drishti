import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.changeScreen});
  final Function() changeScreen;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/yo.jpg'),
            ),
            Transform.translate(
              offset: const Offset(0, -100),
              child: Column(
                children: [
                  const Text(
                    "Stay Safe",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 86,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "with DRISHTI",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60,
                      // color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        onPressed: changeScreen,
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.arrow_circle_right_rounded),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
