
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cubit/cubit.dart';
import '../bloc/cubit/state.dart';
import 'Preferences.dart';

class Dark extends StatelessWidget {

 // bool isDark=false;
  bool? dark=Preferences.getData(key: 'isDark');
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>TestCubit()..CDark(
        d: dark
      ),
      child: BlocConsumer<TestCubit,AppStates>(
        listener:(con,sta){} ,
        builder: (con,sta){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            // themeMode: ThemeMode.light,
            themeMode: TestCubit.get(con).isDark ? ThemeMode.dark: ThemeMode.light,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                  backgroundColor: Colors.red
              ),
              appBarTheme: AppBarTheme(
                  color: Colors.blue,
                  elevation: 0,
                  iconTheme: IconThemeData(
                      color: Colors.black
                  ),
                  titleTextStyle: TextStyle(
                      color: Colors.black
                  )
              ),
              textTheme: TextTheme(
                  bodyText1: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
            darkTheme: ThemeData(
              scaffoldBackgroundColor: Colors.grey,
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                  backgroundColor: Colors.greenAccent
              ),
              appBarTheme: AppBarTheme(
                  color: Colors.grey,
                  elevation: 0,
                  iconTheme: IconThemeData(
                      color: Colors.white
                  ),
                  titleTextStyle: TextStyle(
                      color: Colors.white
                  )
              ),
              textTheme: TextTheme(
                  bodyText1: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
            home: Scaffold(
              appBar: AppBar(
                title: Text('Dark Mode'),
                centerTitle: true,
                automaticallyImplyLeading: false,
                leading:Icon(Icons.menu) ,
                actions: [
                  Icon(Icons.add),
                  Icon(Icons.delete),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    children: [
                      Text('Dark Mode',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: TestCubit.get(con).isDark ?Colors.white:Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 10,),
                      Text('Dark Mode',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: TestCubit.get(con).isDark ?Colors.white:Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 10,),
                      Text('mostafa',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: TestCubit.get(con).isDark ?Colors.white:Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 10,),
                      Text('04080800',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: TestCubit.get(con).isDark ?Colors.white:Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 10,),
                      RaisedButton(
                        child: Text('Dark Mode',style: TextStyle(color: Colors.white),),
                        onPressed: (){},
                        color: Colors.black,
                      ),
                      SizedBox(height: 10,),
                      IconButton(onPressed: (){
                        TestCubit.get(con).CDark();
                      },
                          icon: Icon(TestCubit.get(con).isDark ?Icons.dark_mode:Icons.light_mode,
                            size: 50,))
                    ],
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: (){},
                child: Icon(Icons.add),
              ),
            ),
          );
        },
      )

    );
  }
}
