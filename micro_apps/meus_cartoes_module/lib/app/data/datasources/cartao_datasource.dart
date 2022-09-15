import 'package:common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';

/// Datasource para acesso a dados de cartões
abstract class CartaoDatasource {
  /// Recebe um inteiro idUsuario
  /// Com sucesso retorna um [Map] no padrão JSON no lado direito
  /// Com falha retorna um [MAppException] no lado esquerdo
  Future<Either<MAppException, Map<String, dynamic>>> getCartoesByIdUsuario(
      int idUsuario);
}
