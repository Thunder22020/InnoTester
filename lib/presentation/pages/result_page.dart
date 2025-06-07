import 'package:flutter/material.dart';
import 'package:inno_test/presentation/pages/home_page.dart';
import 'package:inno_test/presentation/widgets/appbars/appbar_with_text.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            child: AppbarWithText(text: "Back to Home page"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
        ),
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Container(
            //
            ),
      ),
    );
  }
}
