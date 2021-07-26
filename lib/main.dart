import 'package:flutter/material.dart';
import 'package:mobile_finals_rest_api/views/home/home.dart';
// import 'package:get/get.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Data Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    return GetMaterialApp(
      home: TestWidget(),
    );
  }
}

 
class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Test Widget"),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {},
              child: Text("Press Me"),
            )
          ],
        ),
      ),
    );
  }
}