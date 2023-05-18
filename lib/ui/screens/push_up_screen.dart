import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gympush/logic/cubit/counter_cubit.dart';
import 'package:gympush/ui/widgets/push_up_widgets/breathing_box.dart';
import 'package:gympush/ui/widgets/push_up_widgets/progress_indicator.dart';
import 'package:gympush/ui/widgets/push_up_widgets/counters.dart';
import 'package:gympush/ui/widgets/push_up_widgets/set_count_button.dart';

class PushScreen extends StatelessWidget {
  const PushScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PushUp'),
      ),
      body: ListView(
        children: const [
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AnimatedBreathingBox(),
              CustomProgressIndicator(),
              SetCountButton(),
            ],
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Center( child: Counters()),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(onPressed: (){
                BlocProvider.of<CounterCubit>(context).increment();
              },
                elevation: 0,
                child: const Icon(CupertinoIcons.add),),
              const SizedBox(width: 5,),
              FloatingActionButton(onPressed: (){
                BlocProvider.of<CounterCubit>(context).decrement();
              },
                elevation: 0,
                child: const Icon(CupertinoIcons.minus),)
            ],),
        ],
      )
    );
  }
}
