import 'package:flutter/material.dart';

class ZikrPage extends StatelessWidget {
  const ZikrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.3,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
