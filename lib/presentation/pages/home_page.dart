import 'package:flutter/material.dart';
import 'package:inno_test/presentation/pages/loading_page.dart';
import 'package:inno_test/presentation/widgets/appbars/appbar_home_page.dart';
import 'package:inno_test/presentation/widgets/scenario_button.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController textEditingController = TextEditingController();
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100), child: AppBarHomePage()),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 220,
              ),
              Text(
                "Hello, what are we testing today?",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              ),
              SizedBox(
                height: 25,
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  double maxWidth = constraints.maxWidth > 900
                      ? 900
                      : constraints.maxWidth * 0.9;

                  return Container(
                    width: maxWidth,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      color: themeProvider.isDarkTheme
                          ? Color(0xFF2A2A2A)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 0.2,
                        color: themeProvider.isDarkTheme
                            ? Colors.transparent
                            : Colors.black,
                      ),
                    ),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      controller: textEditingController,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12),
                        hintStyle: TextStyle(
                            color: Color(0xFF898989),
                            fontWeight: FontWeight.w400),
                        hintText: "Paste link",
                        border: InputBorder.none,
                        icon: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: themeProvider.isDarkTheme
                                  ? Color(0xFF898989)
                                  : Color(0xFFF5F5F5),
                              shape: BoxShape.circle),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.image,
                              color: themeProvider.isDarkTheme
                                  ? Color(0xFFF5F5F5)
                                  : Color(0xFF898989),
                            ),
                          ),
                        ),
                        suffixIcon: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: themeProvider.isDarkTheme
                                  ? Color(0xFF898989)
                                  : Color(0xFFF5F5F5),
                              shape: BoxShape.circle),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoadingPage(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_upward,
                              color: themeProvider.isDarkTheme
                                  ? Color(0xFFF5F5F5)
                                  : Color(0xFF898989),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ScenarioButton(
                    onPressed: () {
                      setState(() {
                        if (_selectedIndex != 1) {
                          _selectedIndex = 1;
                        } else {
                          _selectedIndex = -1;
                        }
                      });
                    },
                    text: "Variant 1",
                    isSelected: _selectedIndex == 1,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ScenarioButton(
                    onPressed: () {
                      setState(() {
                        if (_selectedIndex != 2) {
                          _selectedIndex = 2;
                        } else {
                          _selectedIndex = -1;
                        }
                      });
                    },
                    text: "Variant 2",
                    isSelected: _selectedIndex == 2,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ScenarioButton(
                    onPressed: () {
                      setState(() {
                        if (_selectedIndex != 3) {
                          _selectedIndex = 3;
                        } else {
                          _selectedIndex = -1;
                        }
                      });
                    },
                    text: "Variant 3",
                    isSelected: _selectedIndex == 3,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
