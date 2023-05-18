import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gympush/colors.dart';
import 'package:gympush/logic/cubit/counter_cubit.dart';
import 'package:gympush/ui/screens/bottom_navigation/bottom_navigation_screen.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(create: (context) => CounterCubit(),),], child:  MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Color.fromRGBO(99, 81, 162, 1),elevation: 0,centerTitle: true,),
        floatingActionButtonTheme: FloatingActionButtonThemeData(elevation: 0,backgroundColor: defaultNative,splashColor: Colors.transparent),
        splashFactory: NoSplash.splashFactory,
        outlinedButtonTheme: OutlinedButtonThemeData(style: OutlinedButton.styleFrom(elevation: 0,splashFactory: NoSplash.splashFactory,shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,side: BorderSide(color: defaultNative,width: 100)))),
        primaryColor: defaultNative,),
      home: const NavigationScreen(),
    ),);
  }
}
