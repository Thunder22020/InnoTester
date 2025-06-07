import 'package:flutter/material.dart';
import 'package:inno_test/presentation/pages/result_page.dart';
import 'package:inno_test/presentation/widgets/appbars/appbar_with_text.dart';
import 'package:inno_test/presentation/widgets/loading_indicator.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ResultPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppbarWithText(text: "")),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
              ),
              LoadingIndicator(),
              SizedBox(
                height: 400,
              ),
              Text(
                "Can take a minute",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
