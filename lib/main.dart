// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:travel_ui/app/module/detail/detail_view.dart';
import 'package:travel_ui/app/module/home/home_view.dart';
import 'package:travel_ui/app/module/onboarding/onboarding_view.dart';

void main() async {
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://74aa8f30c4894e7d865e112e73b0100c@o1317368.ingest.sentry.io/6570516';
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => runApp(const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel UI',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      initialRoute: "onboarding",
      routes: {
        "onboarding": (BuildContext context) => const OnboardingScreen(),
        "home": (BuildContext context) => const HomeScreen(),
        "detail": (BuildContext context) => const DetailScreen(),
      },
    );
  }
}
