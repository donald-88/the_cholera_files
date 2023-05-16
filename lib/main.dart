import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_cholera_files/pages/authentication/signUp.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            textTheme: GoogleFonts.poppinsTextTheme(),
            colorSchemeSeed: Colors.green),
        home: const SignUp());
  }
}
