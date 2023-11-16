import 'package:flutter/material.dart';
import 'package:time_machine/currency_material_page.dart';

// there are 2 main design pattern to follow
// 1. Material Design (Android) Created by Google
// 2. Cupertino Design (iOS)  Created by Apple

void main() => runApp(const Home());

// Creating a stateless widget called Home
// Stateless widgets are immutable, meaning that their properties can't change—all values are final.
class Home extends StatelessWidget {
  const Home({Key? key})
      : super(
            key:
                key); // this is the constructor for Home with the key parameter
  // const Home({super.key}) // this is the constructor for Home with the key parameter (another way)

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyMaterialPage(),
    );
  }
}
