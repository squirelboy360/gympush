import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gympush/logic/cubit/counter_cubit.dart';

import '../../../colors.dart';

class Counters extends StatelessWidget {
  const Counters({super.key});
 int getCounterValue(BuildContext context){
   final CounterState state = context.watch<CounterCubit>().state;
   return state.countValue;
 }
  @override
  Widget build(BuildContext context) {
    int repNum = 0;
    int caloriesBurnt = 0;
    int totalCount = getCounterValue(context);

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Column(
           children: [
             Text('Rep:',style:GoogleFonts.aBeeZee(fontSize: 15,color: defaultNative),),
             Text('$repNum',style:GoogleFonts.aBeeZee(fontSize: 15),),
           ],
         ),
         Column(
           children: [
             Text('Colories Burnt 🔥:',style:GoogleFonts.aBeeZee(fontSize: 15,color: defaultNative),),
             Text('$caloriesBurnt',style:GoogleFonts.aBeeZee(fontSize: 15),),
           ],
         ),
         Column(children: [
           Text('Total Count:',style:GoogleFonts.aBeeZee(fontSize: 15,color: defaultNative),),
           Text('$totalCount',style:GoogleFonts.aBeeZee(fontSize: 15),)
         ],)
        ],
      ),
    );
  }
}
