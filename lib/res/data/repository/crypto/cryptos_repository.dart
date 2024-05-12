import 'package:oop_lessons/res/service/api_service/api_service.dart';


class CryptosRepository {
  Future getAllCrypto() async => await ApiService().getAllCrypto();
}
