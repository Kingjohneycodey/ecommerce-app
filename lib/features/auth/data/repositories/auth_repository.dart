import '../../domain/entities/auth_state.dart';

abstract class AuthRepository {
  Future<AuthState> signIn(String email, String password);
}

class MockAuthRepository implements AuthRepository {
  @override
  Future<AuthState> signIn(String email, String password) async {
    // Simulate API call delay
    await Future.delayed(const Duration(seconds: 1));
    // Mock success for valid credentials (replace with real auth later)
    if (email.isNotEmpty && password.length >= 6) {
      return AuthState(
        isAuthenticated: true,
        userId: 'mock_user_${email.hashCode}',
      );
    }
    throw Exception('Invalid credentials');
  }
}
