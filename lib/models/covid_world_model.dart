class CovidWorld {
  int casos;
  int mortes;
  int recuperados;
  int paisesAfetados;
  DateTime ultimaAtualizacao;

  CovidWorld(
      {this.casos,
      this.mortes,
      this.recuperados,
      this.paisesAfetados,
      this.ultimaAtualizacao});

  factory CovidWorld.fromJson(Map doc) {
    return CovidWorld(
        casos: doc['cases'],
        mortes: doc['deaths'],
        recuperados: doc['recovered'],
        paisesAfetados: doc['affectedCountries'],
        ultimaAtualizacao: DateTime.fromMillisecondsSinceEpoch(doc['updated']));
  }
}
