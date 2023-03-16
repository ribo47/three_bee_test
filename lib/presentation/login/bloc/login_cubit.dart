import 'package:flutter/cupertino.dart';
import 'package:three_bee_test/presentation/login/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  late TextEditingController mailController;
  late TextEditingController passwordController;

  LoginCubit() : super(LoginState.initState) {
    mailController = TextEditingController(text: state.username);
    passwordController = TextEditingController(text: state.password);
  }

   loginTap() {}
}
