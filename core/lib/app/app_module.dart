import 'package:common_dependencies/common_dependencies.dart';
import 'package:home_module/app/home_module.dart';
import 'package:login_module/app/login_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute('/home/', module: HomeModule())
  ];
}
