import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loginsystem/src/pages/appointment_page.dart';
import 'package:loginsystem/src/pages/gallery_page.dart';
import 'package:loginsystem/src/pages/main_page.dart';
import 'package:loginsystem/src/pages/results_page.dart';
import 'package:loginsystem/src/pages/search_page.dart';
import 'package:loginsystem/src/pages/start_page.dart';
import 'package:loginsystem/src/pages/welcome_page.dart';

import 'home.dart';

class WelcomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
      title: 'BarberShop Booking',
      initialRoute: 'welcome',
      routes: {
        'home': (BuildContext context) => MainPage(),
        'start': (BuildContext context) => StartPage(),
        'search': (BuildContext context) => SearchPage(),
        'gallery': (BuildContext context) => GalleryPage(),
        'welcome': (BuildContext context) => WelcomePage(),
        'results': (BuildContext context) => ResultsPage(),
        'appointments': (BuildContext context) => AppointmentPage(),
      },

      //Theme de diseños general de la Aplicación
      theme: ThemeData(
        primaryColor: Colors.white,
        bottomAppBarTheme: BottomAppBarTheme(
          color: Color.fromRGBO(172, 128, 39, 1.0),
        ),
      ),
    );
  }
}
