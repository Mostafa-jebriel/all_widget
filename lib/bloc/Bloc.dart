
import 'package:all/bloc/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'cubit/state.dart';

class BlocPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>TestCubit(),
      child: BlocConsumer<TestCubit,AppStates>(
        listener: (con,sta){},
        builder: (co,st){
          var cubit=TestCubit.get(co);
         return Scaffold(
           appBar: AppBar(
             title: Text('Bloc'),
             centerTitle: true,
             automaticallyImplyLeading: false,
           ),
           body: Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ElevatedButton(
                   child: Text('Minus',style: TextStyle(fontSize: 20),),
                   onPressed: () {
                     cubit.minus();
                   },
                 ),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text('${cubit.counter}',style: TextStyle(fontSize: 30)),
                 ),
                 ElevatedButton(
                   child: Text('Plus',style: TextStyle(fontSize: 20)),
                   onPressed: () {
                     cubit.plus();
                     //cubit.sendmail();
                   },
                 ),
               ],
             ),
           ),
         );
        },
      ),
    );
  }
}
