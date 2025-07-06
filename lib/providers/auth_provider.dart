import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../features/auth/data/repositories/auth_repository.dart';
import '../features/auth/domain/entities/auth_state.dart';
import '../features/auth/domain/use_cases/sign_in_use_case.dart';

// Provide the AuthRepository (mock for now)
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return MockAuthRepository();
});

// Provide the SignInUseCase
final signInUseCaseProvider = Provider<SignInUseCase>((ref) {
  return SignInUseCase(ref.read(authRepositoryProvider));
});

// Provide the AuthState
final authStateProvider = StateProvider<AuthState>((ref) {
  return AuthState(isAuthenticated: false, userId: null);
});
