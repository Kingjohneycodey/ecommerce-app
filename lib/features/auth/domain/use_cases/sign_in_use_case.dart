import '../entities/auth_state.dart';
import '../../data/repositories/auth_repository.dart';

class SignInUseCase {
  final AuthRepository repository;

  SignInUseCase(this.repository);

  Future<AuthState> execute(String email, String password) async {
    return await repository.signIn(email, password);
  }
}
