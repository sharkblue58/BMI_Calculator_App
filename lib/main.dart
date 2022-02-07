import 'package:bmi_calculator/shared/cubit/cubit.dart';
import 'package:bmi_calculator/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'shared/cubit/block_observer.dart';
import 'modules/bmi_screen.dart';

void main() {

  Bloc.observer = MyBlocObserver();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterCubit()),

      ],
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener:(context,state){} ,
        builder:(context,state){
          var cubit= CounterCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: BMIScreen(),
          );
        } ,
      ),
    );

  }
}


