import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  // CounterCubit();

  int counterA = 0;
  int counterB = 0;
  CounterCubit() : super(IncrementTeamA());
  // CounterCubit(super.initialState);

  void incrementTeam({required String team, required int buttonNumber}){
      if(team == 'A'){
        counterA += buttonNumber;
        emit(IncrementTeamA());
      }
      else{
        counterB += buttonNumber;
        emit(IncrementTeamB());
      }
  }

  void resetPoints(){
    counterA =0 ;
    counterB = 0;
    emit(ResetPoints());
  }
}