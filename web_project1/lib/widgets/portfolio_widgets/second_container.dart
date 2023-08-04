import 'package:flutter/material.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final standardSize = MediaQuery.of(context).size;

    return orientation == Orientation.landscape
        ? SizedBox(
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: standardSize.width * 0.01),
                      child: const Text(
                        'Our Work',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Image.asset(
                      'assets/images/portfolio/pseudoR.png',
                      width: 30,
                    )
                  ],
                ),
                const Text(
                  'Professional Experience',
                  style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.only(left: standardSize.width * 0.03, bottom: 10, top: 30),
            child: Row(
              children: [
                Image.asset('assets/images/services/menu.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'CATEGORIES',
                    style: TextStyle(
                      color: const Color(0xFFECA3EB),
                      fontSize: standardSize.width * .05,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
