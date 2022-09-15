// Include generated file
import 'package:common_dependencies/common_dependencies.dart';
import 'package:meus_cartoes_module/app/domain/entities/cartao_entity.dart';

part 'meus_cartoes_store.g.dart';

// This is the class used by rest of your codebase
// ignore: library_private_types_in_public_api
class MeusCartoesStore = _MeusCartoesStore with _$MeusCartoesStore;

// The store-class
abstract class _MeusCartoesStore with Store {
  ObservableList<CartaoEntity> listCards = ObservableList.of([]);

  void updateListCards(List<CartaoEntity> list) {
    listCards.clear();
    listCards.addAll(list);
  }
}
