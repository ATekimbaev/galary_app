import 'package:bloc/bloc.dart';


class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  CreateAccountBloc() : super(CreateAccountInitial()) {
    on<CreateAccountEvent>((event, emit) {
    });
  }
}

abstract class CreateAccountEvent {}

abstract class CreateAccountState {}

class CreateAccountInitial extends CreateAccountState {}
