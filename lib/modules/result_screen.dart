import 'dart:math';

import 'package:bmi_calculator/shared/cubit/cubit.dart';
import 'package:bmi_calculator/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultScreen extends StatelessWidget {
   late dynamic gender;
   late dynamic age;
   late dynamic result;
   ResultScreen({this.gender,this.age,this.result});
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterStates>(
      listener:(context,state){
      },
      builder: (context,state){
        var cubit=CounterCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Gender:${gender}',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                Text('Age:${age}',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                Text('Result:${result.round()}',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        );
      },
    );


  }
}
