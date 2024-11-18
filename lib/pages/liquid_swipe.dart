import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipeAnimation extends StatefulWidget {
  const LiquidSwipeAnimation({super.key});

  @override
  State<LiquidSwipeAnimation> createState() => _LiquidSwipeAnimationState();
}

class _LiquidSwipeAnimationState extends State<LiquidSwipeAnimation> {
  LiquidController? liquidController = LiquidController();

  List <Widget> pages = [
    SizedBox(
      height: double.infinity,
      child: Image.asset("assets/green.jpg",fit: BoxFit.cover,),
    ),SizedBox(
      height: double.infinity,
      child: Image.asset("assets/feather.jpg",fit: BoxFit.cover,),
    ),SizedBox(
      height: double.infinity,
      child: Image.asset("assets/flower.jpg",fit: BoxFit.cover,),
    ),SizedBox(
      height: double.infinity,
      child: Image.asset("assets/stars.jpg",fit: BoxFit.cover,),
    ),SizedBox(
      height: double.infinity,
      child: Image.asset("assets/tree.jpg",fit: BoxFit.cover,),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
          pages:pages  ,
        liquidController: liquidController,
        slideIconWidget: const Icon(Icons.arrow_back_ios),
        enableLoop: false,
        waveType: WaveType.liquidReveal,
          // positionSlideIcon: 0.0,
          ignoreUserGestureWhileAnimating: true,
          preferDragFromRevealedArea:true,
        // enableSideReveal: true,
      )
    );
  }
}
