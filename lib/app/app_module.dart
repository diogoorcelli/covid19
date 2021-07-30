import 'package:covid19/pages/home_controller.dart';
import 'package:covid19/pages/home_page.dart';
import 'package:covid19/pages/splash.dart';
import 'package:covid19/repositories/covid_api_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => CovidApiRepository()), //usando bloc
        Bind((i) => HomeController()), //usando bloc
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, args) => SplashPage()),
        ChildRoute("/home", child: (_, args) => HomePage()),
      ];

  //adicione seu widget principal aqui
  //@override
  //Widget get bootstrap => AppWidget();
}
