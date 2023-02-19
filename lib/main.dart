import 'package:flutter/material.dart';
import 'package:whatappui/themechanger.dart';

import 'homepage.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=> ThemeChanger()),
        ],
            child: Builder(
                builder: (BuildContext context ){
                  final themeChanger = Provider.of<ThemeChanger>(context);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                themeMode: themeChanger.themeMode,
                theme: ThemeData(
                  brightness: Brightness.light,
                  primarySwatch: Colors.teal,
                ),
                darkTheme: ThemeData(
                  brightness: Brightness.dark,
                ),

                home: const homepage(),
              );
                })
            );
  }
}

