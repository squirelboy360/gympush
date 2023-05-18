import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gympush/colors.dart';
import 'package:gympush/logic/cubit/counter_cubit.dart';

class AnimatedBreathingBox extends StatelessWidget {
  const AnimatedBreathingBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(padding: const EdgeInsets.fromLTRB(30, 15, 30, 10),
          child: Container(
            height: 360,
            width: 360,
            decoration: BoxDecoration(color: defaultNative,borderRadius: BorderRadius.circular(360)),
            child: Center(
              child: Container(
                height: 270,
                width: 270,
                decoration: BoxDecoration(color: defaultWhite,borderRadius: BorderRadius.circular(360)),
                child:Center(child: BlocBuilder<CounterCubit,CounterState>(builder: (context,state)=>Text(state.countValue.toString(),style: GoogleFonts.aBeeZee(fontSize:100,fontWeight: FontWeight.bold,color: defaultNative),),)),
              ),
            ),
          ),
      ),
    );
  }
}
