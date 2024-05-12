import 'package:flutter/cupertino.dart';
import 'package:oop_lessons/res/data/repository/crypto/cryptos_repository.dart';
import 'package:oop_lessons/res/service/api_service/api_service.dart';

class CryptosViewModel extends ChangeNotifier {
  CryptosViewModel() {
    getAllCryptos();
  }

  List cryptos = [];
  bool isLoading = false;

  void getAllCryptos() async {
    changeLoadingState();
    cryptos = await CryptosRepository().getAllCrypto();
    changeLoadingState();
    notifyListeners();
  }

  void changeLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
