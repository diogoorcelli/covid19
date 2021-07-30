import 'package:covid19/models/covid_world_model.dart';

class CovidCountry extends CovidWorld {
  String nome;
  int mortesHoje;
  int criticos;
  String urlBandeira;

  CovidCountry(
      {this.nome,
      this.criticos,
      this.mortesHoje,
      this.urlBandeira,
      int casos,
      int mortes,
      int recuperados})
      : super(casos: casos, mortes: mortes, recuperados: recuperados);

  factory CovidCountry.fromJson(Map doc) {
    return CovidCountry(
      casos: doc['cases'],
      mortes: doc['deaths'],
      recuperados: doc['recovered'],
      mortesHoje: doc['todayDeaths'],
      nome: doc['country'],
      criticos: doc['critical'],
      urlBandeira: doc['countryInfo']['flag'],
    );
  }
}
