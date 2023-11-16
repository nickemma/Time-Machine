import 'package:flutter/material.dart';

class CurrencyMaterialPage extends StatelessWidget {
  const CurrencyMaterialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Currency Converter!!'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
          // leading: const IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation menu',
          //   onPressed: null,
          // ),
        ),
        body: const Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              '0',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'Enter the amount in USD',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.attach_money,
                    color: Colors.white,
                  ),
                  prefixIconColor: Colors.white70),
            ),
          ]),
        ));
  }
}
