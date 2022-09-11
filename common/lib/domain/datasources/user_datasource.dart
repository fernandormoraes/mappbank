import 'package:common/domain/entities/default_response.dart';

abstract class UserDatasource {
  Future<DefaultResponse> getUserByLogin(String login, String password);
}
