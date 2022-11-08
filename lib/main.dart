import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(
      MaterialApp(
        // ignore: prefer_const_constructors
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: Colors.blue,
        ),
      ),
    );
