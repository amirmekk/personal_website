import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/projects_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _lightTheme = ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.blue,
    primaryColor: Colors.white,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Colors.white,
    canvasColor: Colors.white,
    brightness: Brightness.light,
    // buttonTheme: Theme.of(context).buttonTheme.copyWith(
    //     colorScheme: ColorScheme.light(),
    //     buttonColor: Colors.blue,
    //     splashColor: Colors.white),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );

  ThemeData _darkTheme = ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.blue,
    primaryColor: Colors.black,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Color(0xff1f2124),
    canvasColor: Colors.black,
    brightness: Brightness.dark,
    // buttonTheme: Theme.of(context).buttonTheme.copyWith(
    //     colorScheme: ColorScheme.dark(),
    //     buttonColor: Colors.blue,
    //     splashColor: Colors.black),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );

  bool isLight = false;
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutPage(),
    ProjectsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amir Mekkaoui',
        debugShowCheckedModeBanner: false,
        theme: isLight ? _lightTheme : _darkTheme,
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        //   visualDensity: VisualDensity.adaptivePlatformDensity,

        // ),
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            actions: [
              IconButton(
                  icon: isLight
                      ? Icon(
                          Icons.nightlight_round,
                          color: Colors.black,
                        )
                      : Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                        ),
                  onPressed: () {
                    setState(() {
                      isLight = !isLight;
                    });
                  })
            ],
          ),
          body: Center(
            child: tabWidgets[_selectedIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'About',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.all_inbox),
                label: 'Projects',
              )
            ],
            currentIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
            selectedItemColor: Theme.of(context).accentColor,
          ),
        ));
  }
}
