import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../colors.dart';

class Counters extends StatelessWidget {
  const Counters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int repNum = 0;
    int caloriesBurnt = 0;
    int totalCount = 0;

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
