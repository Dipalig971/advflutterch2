import 'package:flutter/material.dart';

class IntroScreen4 extends StatelessWidget {
  const IntroScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 130,
            ),
            child: Container(
              height: 480,
              width: 480,
              decoration: const BoxDecoration(
                  // color: Colors.red,
                  ),
              child: const Image(
                image: AssetImage('assets/intro_images/intro4.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Treatment Option',
            style: TextStyle(
                color:  Color(0xff0665A9), fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Taking care of your health has \n become easier learn more, \n how to do it.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 180),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      // borderRadius: BorderRadius.circular(5)
                      shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 10),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      // borderRadius: BorderRadius.circular(5)
                      shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 10),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      // borderRadius: BorderRadius.circular(5)
                      shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 10),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: Color(0xff0665A9), shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 90),
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      color: const Color(0xff0665A9),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    'Finish',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
