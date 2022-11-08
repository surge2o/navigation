import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: ((context, index) {
              return const ListTile(
                leading: Icon(Icons.person),
              );
            })),
      ),
    );
  }
}
