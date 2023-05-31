import 'dart:html';

import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({Key? key}) : super(key: key);

  @override
  _responsividademediaqueryState createState() => _responsividademediaqueryState();
}

class _responsividademediaqueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    var alturaBarra = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    //var larguraItem = largura * 0.25;
    var larguraItem = largura / 3;

    return Scaffold(
     appBar: AppBar(
      title: Text('Responividade'),
     ),
      body: Row(
        children: [
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.red,
            child: Text('Responsividade'),
          ),

          Container(
            width: larguraItem,
            height: 200,
            color: Colors.green,
            child: Text('Responsividade'),
          ),

          Container(
            width: larguraItem,
            height: 200,
            color: Colors.yellow,
            child: Text('Responsividade'),
          ),

        ],
      ),
    );
  }
}
