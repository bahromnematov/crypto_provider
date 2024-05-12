import 'package:flutter/material.dart';
import 'package:oop_lessons/res/ui/cryptos/widgets/crypto_item.dart';
import 'package:oop_lessons/res/view_model/crypto/cryptos_view_model.dart';
import 'package:provider/provider.dart';

class CryptosPage extends StatefulWidget {
  const CryptosPage({super.key});

  @override
  State<CryptosPage> createState() => _CryptosPageState();
}

class _CryptosPageState extends State<CryptosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cryptos Page"),
      ),
      body: Consumer<CryptosViewModel>(
        builder: (context, myProvider, child) {
          if (myProvider.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (myProvider.cryptos.isNotEmpty) {
            return ListView.builder(
              itemCount: myProvider.cryptos.length,
              itemBuilder: (context, index) =>
                  CryptoItem(crypto: myProvider.cryptos[index]),
            );
          } else {
            return Text("Data yuq");
          }
        },
      ),
    );
  }
}
