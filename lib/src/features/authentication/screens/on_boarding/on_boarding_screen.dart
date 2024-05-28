import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taskwise/src/features/authentication/controllers/on_boarding_controller.dart';

import '../welcome/welcome_screen.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obController = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(
              pages: obController.pages,
              liquidController: obController.controller,
              onPageChangeCallback: obController.onPageChangeCallback,
              slideIconWidget: Icon(Icons.arrow_back_ios_rounded),
              enableSideReveal: true,
            ),
            Obx(() {
              return obController.currentPage.value == 3
                  ? Positioned(
                bottom: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the Welcome Screen
                    Get.to(WelcomeScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff272727),
                    shape: CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
                ),
              )
                  : SizedBox.shrink();
            }),
            Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => obController.skip(),
                child: const Text("Skip", style: TextStyle(color: Colors.black45)),
              ),
            ),
            Obx(
                  () =>
                  Positioned(
                    bottom: 10,
                    child: AnimatedSmoothIndicator(
                      activeIndex: obController.currentPage.value,
                      count: 4,
                      effect: const WormEffect(
                        activeDotColor: Color(0xFF021723),
                        dotHeight: 8.0,
                      ),
                    ),
                  ),
            ),
          ],
        )
    );
  }
}
