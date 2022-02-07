import 'dart:math';

import 'package:bmi_calculator/modules/result_screen.dart';
import 'package:bmi_calculator/shared/component/components.dart';
import 'package:bmi_calculator/shared/cubit/cubit.dart';
import 'package:bmi_calculator/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class  BMIScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
              appBar: AppBar(
                title: Text('BMI calculator',style: TextStyle(fontWeight:FontWeight.bold),),
              ),
              body: Column(
                children: [
                  Expanded(
                      child: Container(
                        child:Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap:(){CounterCubit.get(context).male();},
                                  child: Container(

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: CounterCubit.get(context).ismale?Colors.blue:Colors.grey,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(image: AssetImage('assets/images/m3.png'),height:90,width:90,),
                                        SizedBox(width:15,),
                                        Text('Male',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold) ,),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width:20,),
                              Expanded(
                                child: GestureDetector(
                                  onTap:(){CounterCubit.get(context).female();},
                                  child: Container(

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: CounterCubit.get(context).ismale?Colors.grey:Colors.blue,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(image: AssetImage('assets/images/f3.png'),height:90,width:90,),
                                        SizedBox(width:15,),
                                        Text('Female',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold) ,),
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                            ],
                          ),
                        ) ,
                      )
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 20),
                        child: Container(
                          decoration:BoxDecoration(
                              color:Colors.grey,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Height',style: TextStyle(fontWeight:FontWeight.bold ,fontSize:25.0),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text('${CounterCubit.get(context).height.round()}',style: TextStyle(fontWeight:FontWeight.w900 ,fontSize:40.0),),
                                  SizedBox(height:5,),
                                  Text('cm',style: TextStyle(fontWeight:FontWeight.bold ,fontSize:20.0),),
                                ],
                              ),
                              Slider(
                                value: CounterCubit.get(context).height,
                                onChanged: (value){
                                    CounterCubit.get(context).slide(value);
                                },
                                max:210,
                                min:150,
                              ),
                            ],
                          ),
                        ),
                      )
                  ),
                  Expanded(
                      child: Container(
                        child:Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.grey,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [


                                      Text('Weight',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold) ,),
                                      SizedBox(height:5,),
                                      Text('${CounterCubit.get(context).weight}',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold) ,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FloatingActionButton(onPressed: (){CounterCubit.get(context).plus();},child:Icon(Icons.add) ,mini: true,heroTag: 'weight+',),
                                          SizedBox(width: 5,),
                                          FloatingActionButton(onPressed: (){CounterCubit.get(context).minus();},child:Icon(Icons.remove) ,mini: true,heroTag: 'weight-',),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width:20,),
                              Expanded(
                                child: Container(

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.grey,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Text('Age',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold) ,),
                                      SizedBox(height:5,),
                                      Text('${CounterCubit.get(context).age}',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold) ,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FloatingActionButton(onPressed: (){CounterCubit.get(context).ageplus();},child:Icon(Icons.add) ,mini: true,heroTag: 'age+',),
                                          SizedBox(width: 5,),
                                          FloatingActionButton(onPressed: (){CounterCubit.get(context).ageminus();},child:Icon(Icons.remove) ,mini: true,heroTag: 'age-',),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),


                            ],
                          ),
                        ) ,
                      )
                  ),

                  Container(
                    width: double.infinity,
                    color:Colors.blue,
                    child: MaterialButton(onPressed:(){
                       final result =CounterCubit.get(context).weight/pow(CounterCubit.get(context).height/100,2);
                       final age=CounterCubit.get(context).age;
                       final gender=CounterCubit.get(context).ismale?'Male':'Female';
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>ResultScreen(result:result ,age:age ,gender:gender)
                        ),
                      );
                    } ,child: Text('Calculate',style: TextStyle(fontWeight:FontWeight.bold,fontSize:25 ),),),
                  ),

                ],
              )
          );
        },
      ),
    );
  }
}
