import 'package:common_dependencies/common_dependencies.dart';
import 'package:extrato_module/app/module/extrato_page.dart';

class ExtratoModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ExtratoPage()),
  ];
}
