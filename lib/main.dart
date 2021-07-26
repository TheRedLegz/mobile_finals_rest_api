import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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