import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

class GameTile extends StatelessWidget {
  final String imagePath;
  final Widget landingPage;
  GameTile({required this.imagePath, required this.landingPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210.0,
      height: 210.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[900],
                      onPrimary: Colors.yellow,
                    ),
                    child: Container(
                        height: 180,
                        width: double.infinity,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Image.asset(this.imagePath)),
                    onPressed: () {
                      Get.to(() => this.landingPage);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
