import 'package:dio/dio.dart';
import 'package:oop_lessons/res/data/model/crypto/crypto_model.dart';

class ApiService {
  Future getAllCrypto() async {
    Dio dio = Dio();

    Response response = await dio.get(
        "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=50&page=1");
    if (response.statusCode == 200) {
      List cryptos = response.data.map((e) => CryptoModel.fromJson(e)).toList();
      return cryptos;
    }
  }
}
