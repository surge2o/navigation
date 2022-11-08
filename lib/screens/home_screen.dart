import 'package:flutter/material.dart';
import 'package:ilundry/widget/favourite_widget.dart';
import 'package:ilundry/widget/home_widget.dart';
import 'package:ilundry/widget/profile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  static const List<Widget> appbarWidget = <Widget>[
    Text('home'),
    Text('favourite'),
    Text('profile'),
  ];
  static const List _widgetOption = <Widget>[
    HomeWidget(),
    FavouriteWidget(),
    ProfileWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[200], title: appbarWidget[selectedIndex]
          //appbarWidget.elementAt(selectedIndex),
          ),
      body: _widgetOption[selectedIndex],
      // _widgetOption.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: ((value) {
            setState(() {
              selectedIndex = value;
            });
          }),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: 'favorite',
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(label: 'profile', icon: Icon(Icons.person)),
          ]),
    );
  }
}
