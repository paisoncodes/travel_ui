import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Container(
                height: height * 0.45,
                width: width * 0.8,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                            "assets/images/reshot-illustration-geography-illustration-SXDYUFM93H.png")))),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Color.fromARGB(238, 239, 244, 255)),
              padding: const EdgeInsets.all(30),
              height: height * 0.45,
              width: width * 0.75,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Easily Travel From Your Pocket",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(40, 30, 40, 30),
                      child: Text(
                        "Easily plan, manage and order your trip, and journey with Safari",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(238, 191, 191, 191)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 12.5,
                          width: 12.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(238, 217, 217, 217)),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          height: 12.5,
                          width: 12.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(238, 191, 191, 191)),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          height: 12.5,
                          width: 12.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(238, 29, 63, 255)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    Container(
                      height: 59,
                      width: 262,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(238, 29, 63, 255)),
                      child: Center(
                        child: GestureDetector(
                          onTap: () => Navigator.popAndPushNamed(context, "home"),
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
