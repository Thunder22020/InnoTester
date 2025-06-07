import 'package:flutter/material.dart';
import 'package:inno_test/presentation/pages/home_page.dart';
import 'package:inno_test/presentation/providers/theme_provider.dart';
import 'package:inno_test/presentation/themes/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeProvider.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      home: HomePage(),
    );
  }
}
