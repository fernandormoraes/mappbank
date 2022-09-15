import 'package:common/domain/entities/default_response.dart';
import 'package:common/domain/entities/mapp_exception.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:meus_cartoes_module/app/data/datasources/cartao_datasource.dart';
import 'package:meus_cartoes_module/app/domain/entities/cartao_entity.dart';
import 'package:meus_cartoes_module/app/data/repositories/cartao_repository.dart';

class DataCartaoRepository implements CartaoRepository {
  final CartaoDatasource _cartaoDatasource;

  DataCartaoRepository(this._cartaoDatasource);

  @override
  Future<Either<MAppException, List<CartaoEntity>>> getCartoesByIdUsuario(
      int idUsuario) async {
    return _cartaoDatasource.getCartoesByIdUsuario(idUsuario).then((retorno) =>
        retorno.fold((l) => left(l), (r) => right(getCartoesByJson(r))));
  }

  List<CartaoEntity> getCartoesByJson(Map<String, dynamic> json) {
    DefaultResponse response = DefaultResponse.fromJson(json);

    List<CartaoEntity> listCards = [];

    for (Map<String, dynamic> card in response.data) {
      listCards.add(CartaoEntity.fromJson(card));
    }

    return listCards;
  }
}
