import 'package:common/domain/datasources/user_datasource.dart';
import 'package:common/domain/entities/default_response.dart';

class ExternalUserDatasource implements UserDatasource {
  @override
  Future<DefaultResponse> getUserByLogin(String login, String password) async {
    await Future.delayed(const Duration(milliseconds: 100));

    Map<String, dynamic> user = {
      'cpf': '47550748861',
      'nome': 'Fernando Moraes',
      'password': 'teste'
    };

    return DefaultResponse('', user);
  }
}
