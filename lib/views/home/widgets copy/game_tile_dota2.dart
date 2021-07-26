import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_finals_rest_api/views/home/dota2/dota_landing_page.dart';
// import 'package:get/get.dart';

class GameTileDota2 extends StatelessWidget {
  // final Product product;

  // ProductTile(this.product);

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
              Stack(
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
                        child: Image.asset('images/dota2.jpg')),
                    onPressed: () {
                      Get.to(Dota2LandingPage());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
