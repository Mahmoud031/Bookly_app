import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_router.dart';

import 'package:flutter_application_1/core/utils/assets.dart';

import 'package:flutter_application_1/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

//SingleTickerProviderStateMixin handle when to animate (referesh rate)
class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //animation controller always between 0 and 1
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  //any controller should be disposed
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kTrasnsitionDuration);
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 5), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
}
