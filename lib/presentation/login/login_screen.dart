import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        create: (_) => LoginCubit(),
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (BuildContext context, state) {
            return _buildBody(context, state);
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, LoginState state){
    final _cubit = context.read<LoginCubit>();
    return Column(
      children: [
        TBTextField(
          controller: _cubit.mailController,
        ),
        TBTextField(
          controller: _cubit.mailController,
        ),
        TBButton(
          cta: _cubit.loginTap(),
          text: 'LOGIN',
        ),
      ],
    );
  }
}
