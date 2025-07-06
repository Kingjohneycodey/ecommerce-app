class AuthState {
  final bool isAuthenticated;
  final String? userId;

  AuthState({required this.isAuthenticated, this.userId});

  AuthState copyWith({bool? isAuthenticated, String? userId}) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      userId: userId ?? this.userId,
    );
  }
}
