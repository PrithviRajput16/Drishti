import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.changeScreen});
  final Function(int) changeScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // height: double.infinity,
        color: const Color.fromARGB(255, 34, 38, 97),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                // color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/yo34.jpeg'),
            ),
            // Image.asset('assets/yo34.jpeg'),
            // const SizedBox(
            //   height: 500,
            // ),
            const SizedBox(
              height: 80,
            ),
            Column(
              children: [
                const Text(
                  "Stay Safe",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 75,
                    color: Color.fromARGB(255, 180, 242, 251),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "with DRISHTI",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    color: Color.fromARGB(255, 54, 205, 228),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 39,
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
                      onPressed: () {
                        changeScreen(0);
                      },
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
            SizedBox(
              height: 100,
            ),
            Text(""),
          ],
        ),
      ),
    );
  }
}
