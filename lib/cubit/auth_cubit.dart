import 'package:airplane/models/user_model.dart';
import 'package:airplane/services/auth.service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthServices()
          .signUp(email: email, password: password, name: name);

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
