import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gympush/colors.dart';

class SetCountButton extends StatelessWidget {
  const SetCountButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(5),child: OutlinedButton(onPressed: null, child: Text('Set Count',style: GoogleFonts.aBeeZee(color: defaultNative),)),);
  }
}
