import 'package:meus_cartoes_module/app/domain/entities/cartao_entity.dart';
import 'package:meus_cartoes_module/app/data/repositories/cartao_repository.dart';

class GetMyCardsUseCase {
  final CartaoRepository _cartaoRepository;

  GetMyCardsUseCase(this._cartaoRepository);

  Future<List<CartaoEntity>> runUseCase(GetMyCardsUseCaseParams params) async {
    return _cartaoRepository
        .getCartoesByIdUsuario(params.idUsuario)
        .then((retorno) => retorno.fold((l) => throw l, (r) => r));
  }
}

class GetMyCardsUseCaseParams {
  final int _idUsuario;

  GetMyCardsUseCaseParams(this._idUsuario);
  int get idUsuario => _idUsuario;
}
