import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gympush/colors.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../logic/cubit/counter_cubit.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({Key? key}) : super(key: key);
  double getCounterValue(BuildContext context){
    final CounterState state = context.watch<CounterCubit>().state;
    final int counterValue = state.countValue;
    const int totalValue = 100;
    return state.countValue.toDouble()/totalValue.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(50, 10, 50, 20),
    child: LinearProgressIndicator(
      color: defaultNative,
      backgroundColor: defaultWhite,
      minHeight: 50,
      value:getCounterValue(context) ,
    ),);
  }
}
