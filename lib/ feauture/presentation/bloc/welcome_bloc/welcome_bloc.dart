import 'package:bloc/bloc.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(HaveAccountState()) {
    on<CreateAccountEvent>(_createAccount);
    on<HaveAccountEvent>(_haveAccount);
   
  }
  Future<void> _createAccount(event, Emitter<WelcomeState> emit)async{
    emit(CreateAccountState());
  }
  Future<void> _haveAccount(event, Emitter<WelcomeState> emit)async{
    emit(HaveAccountState());
  }
}

abstract class WelcomeEvent {}

class CreateAccountEvent extends WelcomeEvent {}

class HaveAccountEvent extends WelcomeEvent {}

abstract class WelcomeState {}

class HaveAccountState extends WelcomeState {}
class CreateAccountState extends WelcomeState {}
