import 'package:common_dependencies/common_dependencies.dart';
import 'package:meus_cartoes_module/app/domain/entities/cartao_entity.dart';
import 'package:meus_cartoes_module/app/data/repositories/cartao_repository.dart';
import 'package:meus_cartoes_module/app/domain/usecases/get_my_cards_usecase.dart';
import 'package:meus_cartoes_module/app/module/meus_cartoes_store.dart';

class MeusCartoesPresenter {
  final CartaoRepository _cartaoRepository;
  final MeusCartoesStore store = Modular.get<MeusCartoesStore>();

  late GetMyCardsUseCase _getMyCardsUseCase;

  MeusCartoesPresenter(this._cartaoRepository) {
    _getMyCardsUseCase = GetMyCardsUseCase(_cartaoRepository);
    getMyCards(0);
  }

  Future<void> getMyCards(int idUsuario) async {
    List<CartaoEntity> cards =
        await _getMyCardsUseCase.runUseCase(GetMyCardsUseCaseParams(idUsuario));
    store.updateListCards(cards);
  }
}
