import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/theme_provider.dart';

class AppbarWithText extends StatelessWidget {
  final String text;

  const AppbarWithText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(30),
        height: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Inno Test",
                  style: TextStyle(
                    color:
                        themeProvider.isDarkTheme ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Color(0xFF737373),
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
