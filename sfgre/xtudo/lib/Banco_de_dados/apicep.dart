import 'package:http/http.dart' as http;
import 'package:xtudo/Banco_de_dados/ceppersiti.dart';

class ViaCepService {
  static Future<ResultCep> fetchCep({String? cep}) async {
    final response =
        await http.get(Uri.parse("https://viacep.com.br/ws/$cep/json/"));
    if (response.statusCode == 200) {
      return ResultCep.fromJson(response.body);
    } else {
      throw Exception('Requisição inválida!');
    }
  }
}
