import 'package:flutter/material.dart';
import 'package:oop_lessons/res/data/model/crypto/crypto_model.dart';

class CryptoItem extends StatelessWidget {
  CryptoModel crypto;

  CryptoItem({required this.crypto, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: Image.network(
          crypto.image,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(crypto.name),
        subtitle: Text(crypto.symbol),
        trailing: Text(crypto.currentPrice.toString()),
      ),
    );
  }
}
