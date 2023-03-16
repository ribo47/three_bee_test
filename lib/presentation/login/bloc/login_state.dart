class LoginState {
  final String? username;
  final String? password;

  const LoginState({
    required this.username,
    required this.password,
  });

  static LoginState initState = const LoginState(
    password: null,
    username: null,
  );

  LoginState copyWith({
    String? username,
    String? password,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }
}
