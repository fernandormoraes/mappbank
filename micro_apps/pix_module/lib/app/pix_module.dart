library pix_module;

import 'package:common_dependencies/common_dependencies.dart';
import 'package:pix_module/app/module/pages/destino_pix_page.dart';
import 'package:pix_module/app/module/pages/sucesso_pix_page.dart';
import 'package:pix_module/app/module/pages/transferir_pix_page.dart';
import 'package:pix_module/app/module/pix_page.dart';

class PixModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const PixPage()),
    ChildRoute('/transferir_pix/',
        child: (_, args) => const TransferirPixPage()),
    ChildRoute('/destino_pix/',
        child: (_, args) => DestinoPixPage(
              valor: Modular.args.data,
            )),
    ChildRoute('/sucesso_pix/',
        child: (_, args) => SucessoPixPage(
              valor: Modular.args.data,
            )),
  ];
}
