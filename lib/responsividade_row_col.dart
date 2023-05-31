import 'package:flutter/material.dart';

class ResponsividadeRowCol extends StatefulWidget {
  const ResponsividadeRowCol({Key? key}) : super(key: key);

  @override
  _ResponsividadeRowColState createState() => _ResponsividadeRowColState();
}

class _ResponsividadeRowColState extends State<ResponsividadeRowCol> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar :AppBar(
          title: Text('Responsividade'),
        ),
        body: Column(
            children: [
              /*  Container(
            color: Colors.blue,
            height: 200,
          ),*/
              Expanded(
                  flex: 1,
                  child:  Container(
                    color: Colors.orange,
                  )
              ),

              Expanded(
                  flex: 2,
                  child:  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child:  Container(
                            color: Colors.yellow,
                          )
                      ),
                      Expanded(
                          flex: 2,
                          child:  Container(
                            color: Colors.purple,
                          )
                      ),
                      Expanded(
                          flex: 2,
                          child:  Container(
                            color: Colors.black,
                          )
                      ),
                    ],
                  )
              ),

              Expanded(
                  flex: 1,
                  child:  Container(
                    color: Colors.blue,
                  )
              ),

            ],
        ),
        );
    }
}