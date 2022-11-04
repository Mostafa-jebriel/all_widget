
import 'package:all/Dialog/utils.dart';
import 'package:all/bloc/cubit/state.dart';
import 'package:all/dark/Preferences.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class TestCubit extends Cubit<AppStates>{

  TestCubit():super(AppInitialState());

  static TestCubit get(context)=>BlocProvider.of(context);

  int counter=0;
  void minus(){
    counter--;
    emit(counterMinusState());
  }
  void plus(){
    counter++;
    emit(counterPlusState());
  }

  bool isDark=false;
  void CDark({bool? d}){
    if(d!=null){
      isDark=d;
      emit(ThemeState());
    }
    else{
      isDark=!isDark;
      Preferences.putData(key: 'isDark', v: isDark).then((value){
        emit(ThemeState());
      });
    }


  }

  // sendmail(){
  //   Utils.openEmail(
  //     toEmail: 'mostafajebriel20@gmail.com',
  //     subject: 'Hello World',
  //     body: 'This works great!',
  //   );
  // }


}