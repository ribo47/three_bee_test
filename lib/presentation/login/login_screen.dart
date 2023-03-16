import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:three_bee_test/api/di_service.dart';
import 'package:three_bee_test/presentation/login/bloc/login_cubit.dart';
import 'package:three_bee_test/presentation/login/bloc/login_state.dart';
import 'package:three_bee_test/utils/commonWidget/textfield.dart';

import '../../utils/commonWidget/button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => LoginCubit(loginRepository),
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (BuildContext context, state) {
            return _buildBody(context, state);
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, LoginState state) {
    final _cubit = context.read<LoginCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TBTextField(
            controller: _cubit.mailController,
          ),
          const SizedBox(
            height: 30,
          ),
          TBTextField(
            controller: _cubit.passwordController,
            isPassword: true,
          ),
          const SizedBox(
            height: 80,
          ),
          TBButton(
            cta: () => _cubit.loginTap(context),
            text: 'LOGIN',
          ),
        ],
      ),
    );
  }
}
