import 'package:flutter/material.dart';
import 'package:gympush/colors.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../logic/cubit/counter_cubit.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StepProgressIndicator(
        totalSteps: 100,
        currentStep:3,
        size:50,
        mainAxisAlignment: MainAxisAlignment.center,
        direction: Axis.horizontal,
        //progressDirection: TextDirection.ltr,
        selectedColor: defaultNative,
    );
  }
}
