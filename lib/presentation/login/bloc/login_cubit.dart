import 'package:flutter/cupertino.dart';
import 'package:three_bee_test/api/login_repository/login_repository.dart';
import 'package:three_bee_test/presentation/login/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  late TextEditingController mailController;
  late TextEditingController passwordController;

  final LoginRepository loginRepository;

  LoginCubit(this.loginRepository) : super(LoginState.initState) {
    mailController = TextEditingController(text: state.username);
    passwordController = TextEditingController(text: state.password);
  }

   Future<void> loginTap(BuildContext context) async {
     final isLoggedIn = await loginRepository.login(mailController.text, passwordController.text);
     if(isLoggedIn){
       //Todo: change to a context-less type navigation
       Navigator.pushNamed(context, '/hives');
     }
   }


}
