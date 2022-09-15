import 'package:common/domain/entities/mapp_exception.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:meus_cartoes_module/app/domain/entities/cartao_entity.dart';

/// Repositório de acesso a dados de cartões
abstract class CartaoRepository {
  ///Retorna lista de cartões do usuário, recebendo idUsuario como parâmetro
  Future<Either<MAppException, List<CartaoEntity>>> getCartoesByIdUsuario(
      int idUsuario);
}
