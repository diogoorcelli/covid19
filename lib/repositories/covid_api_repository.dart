import 'package:covid19/models/covid_country_model.dart';
import 'package:covid19/models/covid_world_model.dart';
import 'package:dio/dio.dart';

class CovidApiRepository {
  final Dio _dio = Dio();
  String url = "https://corona.lmao.ninja/v2";

  Future<CovidWorld> getMundo() async {
    Response response = await _dio.get('$url/all');
    if (response.statusCode != 200) {
      throw Exception();
    } else {
      return CovidWorld.fromJson(response.data);
    }
  }

  Future<CovidCountry> getPais({String pais}) async {
    Response response = await _dio.get('$url/countries/$pais');
    if (response.statusCode != 200) {
      throw Exception();
    } else {
      return CovidCountry.fromJson(response.data);
    }
  }
}
