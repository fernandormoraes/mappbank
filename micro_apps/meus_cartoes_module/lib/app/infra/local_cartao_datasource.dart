import 'package:common/domain/entities/mapp_exception.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:meus_cartoes_module/app/data/datasources/cartao_datasource.dart';

class LocalCartaoDatasource implements CartaoDatasource {
  @override
  Future<Either<MAppException, Map<String, dynamic>>> getCartoesByIdUsuario(
      int idUsuario) async {
    await Future.delayed(const Duration(microseconds: 50));
    return right({
      'message': '',
      'data': [
        {
          'numero': '123443215555',
          'mesVencimento': 2,
          'anoVencimento': 27,
          'ccv': '123',
          'nome': 'FERNANDO R MORAES',
          'fisico': true
        },
        {
          'numero': '123443214322',
          'mesVencimento': 3,
          'anoVencimento': 29,
          'ccv': '321',
          'nome': 'FERNANDO R MORAES',
          'fisico': false
        },
        {
          'numero': '123443219878',
          'mesVencimento': 5,
          'anoVencimento': 30,
          'ccv': '321',
          'nome': 'FERNANDO MORAES',
          'fisico': false
        },
      ]
    });
  }
}
