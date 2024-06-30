import 'package:flutter/material.dart';
import 'screens/workspaces_page.dart';
import 'package:flutter/services.dart';

void main() {
  const Color backgroundColor = Color.fromRGBO(40, 40, 40, 1);

  // Set system navigation bar color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: backgroundColor,
    systemNavigationBarIconBrightness: Brightness.light,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.white54,
          selectionHandleColor: Colors.white54,
          selectionColor: Colors.white54,
        ),
      ),
      home: const WorkspacesPage(),
    );
  }
}
