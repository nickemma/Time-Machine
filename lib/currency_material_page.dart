// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CurrencyMaterialPage extends StatefulWidget {
  const CurrencyMaterialPage({Key? key}) : super(key: key);

  @override
  State<CurrencyMaterialPage> createState() => _CurrencyMaterialPageState();
}

class _CurrencyMaterialPageState extends State<CurrencyMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Currency Converter!!'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'NAR ${result.toString()}',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: 'Enter the amount in USD',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(
                    Icons.attach_money,
                  ),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text('convert'),
              ),
            )
          ]),
        ));
  }
}
