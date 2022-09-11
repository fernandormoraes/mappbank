import 'package:common/domain/entities/mapp_exception.dart';
import 'package:common/domain/entities/user_entity.dart';
import 'package:common/domain/repositories/auth_repository.dart';
import 'package:common_dependencies/common_dependencies.dart';

class AuthenticateUseCase {
  final AuthRepository _authRepository;

  AuthenticateUseCase(this._authRepository);

  Future<Either<MAppException, UserEntity>> runUseCase(
      AuthenticateUseCaseParams params) async {
    return await _authRepository.authenticate(params.login, params.password);
  }
}

class AuthenticateUseCaseParams {
  final String _login;
  final String _password;

  String get login => _login;
  String get password => _password;

  AuthenticateUseCaseParams(this._login, this._password);
}
