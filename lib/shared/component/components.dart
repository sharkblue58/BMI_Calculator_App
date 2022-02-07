

import 'package:flutter/material.dart';

void nevigateTo(context, Widget)=>Navigator.push(context, MaterialPageRoute(builder:(context)=> Widget,));
void nevigateAndFinish(context, Widget)=>Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder:(context)=> Widget,),
      (route)=>false,
);