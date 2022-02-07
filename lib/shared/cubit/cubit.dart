import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:bmi_calculator/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterCubit extends Cubit<CounterStates>

{

  CounterCubit() : super(CounterIntialstate());
  static CounterCubit get (context)=> BlocProvider.of(context);
  Color toggle = Colors.blue;
  int age =20;
  int weight =70;
  bool ismale=true;
  double height=160;


  void minus()
  {
    weight--;
    emit(WeightMinusstate());
  }
  void plus()
  {
    weight++;
    emit(WeightPlusstate());
  }
  void ageminus()
  {
    age--;
    emit(AgeMinusstate());
  }
  void ageplus()
  {
    age++;
    emit(AgePlusstate());
  }

  void male(){
    ismale=true;
    emit(Male());
  }
  void female(){
    ismale=false;
    emit(Female());
  }

  void slide(double value){
    height=value;
    emit(Slide());
  }

}