import 'package:bloc/bloc.dart';
import 'package:gallary_app/%20feauture/domain/repositories/login_repo.dart';

class HaveAccountBloc extends Bloc<HaveAccountEvent, HaveAccountState> {
  HaveAccountBloc({required this.repo}) : super(CreateAccountState()) {
    on<CreateAccountEvent>(_createAccount);
    on<LigInEvent>(_logIn);
  }
  late final LoginRepo repo;
  Future<void> _createAccount(event, Emitter<HaveAccountState> emit) async {
    emit(CreateAccountState());
  }

  Future<void> _logIn(event, Emitter<HaveAccountState> emit) async {
    emit(LogInState());
    final result =
        await repo.logIn(emali: event.email, password: event.password);

    if (result == true) {
      emit(LoginSuccesState());
    } else {
      emit(LoginErrorState());
    }
  }
}

abstract class HaveAccountState {}

class CreateAccountState extends HaveAccountState {}

class LogInState extends HaveAccountState {}

class LoginSuccesState extends HaveAccountState {}

class LoginErrorState extends HaveAccountState {}

abstract class HaveAccountEvent {}

class CreateAccountEvent extends HaveAccountEvent {}

class LigInEvent extends HaveAccountEvent {
  final String email;
  final String password;
  LigInEvent({
    required this.email,
    required this.password,
  });
}
