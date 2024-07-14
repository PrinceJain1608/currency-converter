import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});
  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPage();
}

class _CurrencyConverterPage extends State<CurrencyConverterPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text(
          "Currency Converter",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₹ ${result.toStringAsFixed(3)}',
              style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: "Please enter the amount in USD",
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
                keyboardType: TextInputType.numberWithOptions(decimal: false),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    setState(() {
                      result = double.parse(textEditingController.text) * 80;
                    });
                  }
                },
                style: TextButton.styleFrom(
                    backgroundColor: (Colors.black),
                    foregroundColor: (Colors.white),
                    minimumSize: (Size(double.infinity, 70)),
                    shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                child: Text("Convert"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class CurrencyConverterPagee extends StatelessWidget {
//   const CurrencyConverterPagee({super.key});
//   @override
//   Widget build(BuildContext context) {
    
//   }
// }
