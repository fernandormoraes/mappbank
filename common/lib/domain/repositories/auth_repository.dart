import 'package:common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';

/// Repositório de acesso aos métodos destinados a autenticação
abstract class AuthRepository {
  /// Método que acessa a camada de autenticação e retorna um [UserEntity] se o login e senha forem válidos
  Future<Either<MAppException, UserEntity>> authenticate(
      String login, String password);
}
