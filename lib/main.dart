import 'package:flutter/material.dart';
import 'package:fullscreen/fullscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  FullScreen.enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Dog Social',
        theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
            primarySwatch: Colors.orange,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        navigatorKey: StackedService.navigatorKey,
        initialRoute: Routes.onboardingView,
        onGenerateRoute: StackedRouter().onGenerateRoute);
  }
}
