import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_task3/MyHomePage.dart';
import 'package:sample_task3/providers/BottomNavigationProvider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavigationBarProvider(),
      child: MaterialApp(
        title: 'Flutter Bottom Navigation',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}


