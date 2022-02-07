/*
import 'package:bmi_calculator/shared/cubit/cubit.dart';
import 'package:bmi_calculator/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterStates>(
      listener:(context,state){},
      builder: (context,state){
        var cubit=CounterCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Gender:${cubit.ismale?'male':'female'}',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                Text('Age:${cubit.age}',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                Text('Result:',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        );
      },
    );


  }
}
*/
// *****************************************************************************************************************************************
/*
import 'package:bmi_calculator/shared/cubit/cubit.dart';
import 'package:bmi_calculator/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultScreen extends StatelessWidget {
  final dynamic gender;
  final dynamic age;
  final dynamic result;
  ResultScreen({this.gender,this.age,this.result});

  @override
  Widget build(BuildContext context) {
    var cubit=CounterCubit.get(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender:${gender}',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
            Text('Age:${age}',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
            Text('Result:${result}',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );

  }
}*/
