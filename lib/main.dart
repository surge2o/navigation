import 'package:flutter/material.dart';
import 'package:ilundry/providers/counter.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Couter())
        ],
        child: MaterialApp(
          // ignore: prefer_const_constructors
          home: HomeScreen(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            primaryColor: Colors.blue,
          ),
        ),
      ),
    );
