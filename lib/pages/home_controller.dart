import 'package:covid19/models/covid_country_model.dart';
import 'package:covid19/models/covid_world_model.dart';
import 'package:covid19/repositories/covid_api_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final api = Modular.get<CovidApiRepository>();

  _HomeControllerBase() {
    getInfoMundo();
    getInfoPais();
  }

  @observable
  int currentIndex = 0;

  @observable
  TextEditingController textFieldController = TextEditingController();

  @observable
  CovidWorld covidWorld;

  @observable
  CovidCountry covidCountry;

  @action
  getInfoMundo() async {
    covidWorld = await api.getMundo();
  }

  @action
  getInfoPais({String nomePais = 'brazil'}) async {
    try {
      covidCountry = await api.getPais(pais: nomePais);
    } catch (exception) {
      return Container();
    }
  }

  @action
  changePage(int index) {
    currentIndex = index;
  }
}
