import 'package:common/common.dart';
import 'package:common/domain/datasources/user_datasource.dart';
import 'package:common/domain/entities/default_response.dart';
import 'package:common_dependencies/common_dependencies.dart';

class DataAuthRepository implements AuthRepository {
  final UserDatasource _userDatasource;

  DataAuthRepository(this._userDatasource);

  @override
  Future<Either<MAppException, UserEntity>> authenticate(
      String login, String password) async {
    DefaultResponse defaultResponse =
        await _userDatasource.getUserByLogin(login, password);

    return right(UserEntity.fromJson(defaultResponse.data));
  }
}
