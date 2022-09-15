import 'package:common_dependencies/common_dependencies.dart';
import 'package:meus_cartoes_module/app/data/datasources/cartao_datasource.dart';
import 'package:meus_cartoes_module/app/infra/data_cartao_repository.dart';
import 'package:meus_cartoes_module/app/data/repositories/cartao_repository.dart';
import 'package:meus_cartoes_module/app/infra/local_cartao_datasource.dart';
import 'package:meus_cartoes_module/app/module/meus_cartoes_page.dart';
import 'package:meus_cartoes_module/app/module/meus_cartoes_presenter.dart';
import 'package:meus_cartoes_module/app/module/meus_cartoes_store.dart';

class MeusCartoesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => LocalCartaoDatasource()),
    Bind.singleton((i) => DataCartaoRepository(i.get<CartaoDatasource>())),
    Bind.singleton((i) => MeusCartoesPresenter(i.get<CartaoRepository>())),
    Bind.singleton((i) => MeusCartoesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => MeusCartoesPage()),
  ];
}
