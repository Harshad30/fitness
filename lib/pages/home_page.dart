import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Harshad";

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Fitness App")),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to my app day $days with $name",),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
