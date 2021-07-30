// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$currentIndexAtom = Atom(name: '_HomeControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$textFieldControllerAtom =
      Atom(name: '_HomeControllerBase.textFieldController');

  @override
  TextEditingController get textFieldController {
    _$textFieldControllerAtom.reportRead();
    return super.textFieldController;
  }

  @override
  set textFieldController(TextEditingController value) {
    _$textFieldControllerAtom.reportWrite(value, super.textFieldController, () {
      super.textFieldController = value;
    });
  }

  final _$covidWorldAtom = Atom(name: '_HomeControllerBase.covidWorld');

  @override
  CovidWorld get covidWorld {
    _$covidWorldAtom.reportRead();
    return super.covidWorld;
  }

  @override
  set covidWorld(CovidWorld value) {
    _$covidWorldAtom.reportWrite(value, super.covidWorld, () {
      super.covidWorld = value;
    });
  }

  final _$covidCountryAtom = Atom(name: '_HomeControllerBase.covidCountry');

  @override
  CovidCountry get covidCountry {
    _$covidCountryAtom.reportRead();
    return super.covidCountry;
  }

  @override
  set covidCountry(CovidCountry value) {
    _$covidCountryAtom.reportWrite(value, super.covidCountry, () {
      super.covidCountry = value;
    });
  }

  final _$getInfoMundoAsyncAction =
      AsyncAction('_HomeControllerBase.getInfoMundo');

  @override
  Future getInfoMundo() {
    return _$getInfoMundoAsyncAction.run(() => super.getInfoMundo());
  }

  final _$getInfoPaisAsyncAction =
      AsyncAction('_HomeControllerBase.getInfoPais');

  @override
  Future getInfoPais({String nomePais = 'brazil'}) {
    return _$getInfoPaisAsyncAction
        .run(() => super.getInfoPais(nomePais: nomePais));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic changePage(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex},
textFieldController: ${textFieldController},
covidWorld: ${covidWorld},
covidCountry: ${covidCountry}
    ''';
  }
}
