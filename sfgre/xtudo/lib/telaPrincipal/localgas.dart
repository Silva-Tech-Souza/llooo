import 'package:flutter/material.dart';

class LocalGasPage extends StatefulWidget {
  const LocalGasPage({Key? key}) : super(key: key);

  @override
  _LocalGasPageState createState() => _LocalGasPageState();
}

class _LocalGasPageState extends State<LocalGasPage> {
  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(width: sizeW, height: sizeH, color: Colors.purple),
    );
  }
}
