class LoginResponse{
  final String? refresh;
  final String? access;

  const LoginResponse({
    this.refresh,
    this.access,
  });

  factory LoginResponse.fromJson(dynamic map) {
    return LoginResponse(
      refresh: map['refresh'] as String,
      access: map['access'] as String,
    );
  }
}