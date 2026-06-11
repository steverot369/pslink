import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

 

  runApp(
    const PSLinkApp(),
  );
}

class PSLinkApp extends StatelessWidget {
  const PSLinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PSLink',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
      ),
      home: const HomeScreen(),
    );
  }
}