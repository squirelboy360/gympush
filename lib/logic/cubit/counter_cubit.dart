import 'dart:async';
import 'package:all_sensors/all_sensors.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beep/flutter_beep.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  StreamSubscription<ProximityEvent>? _proximitySubscription;

  CounterCubit() : super(CounterState(countValue: 0)) {
    startListening();
  }

  void increment() {
    emit(CounterState(countValue: state.countValue + 1));
    FlutterBeep.beep();
  }

  void decrement() {
    emit(CounterState(countValue: state.countValue - 1));
    FlutterBeep.playSysSound(AndroidSoundIDs.TONE_PROP_BEEP2);
  }

  void startListening() {
    _proximitySubscription = proximityEvents?.listen((event) {
      if (event is ProximityEvent) {
        final proximityValue = event.getValue();
        if (proximityValue) {
          increment();
        }
      }
    });
  }

  @override
  Future<void> close() {
    _proximitySubscription?.cancel();
    return super.close();
  }

}
