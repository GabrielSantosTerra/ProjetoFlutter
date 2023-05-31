import 'package:flutter/material.dart';
import 'package:pojetoflutter1/web_app_bar.dart';
import 'package:pojetoflutter1/widget/item_produto.dart';
import 'package:pojetoflutter1/widget/mobile_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {

  _ajustarVisualizacao(double larguraTela){

    int colunas = 2;

    if( larguraTela <= 600){
      colunas = 2;
    }else if( larguraTela <= 960){
      colunas = 4;
    }else {
      colunas = 6;
  }
  return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraint) {

          var largura = constraint.maxWidth;
          var alturaBarra = AppBar().preferredSize.height;

          return Scaffold(
              appBar: largura < 600
                  ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(largura, alturaBarra)
              )

                  : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(largura, alturaBarra)
              ),

            body: Padding(
              padding: EdgeInsets.all(16),
              child: GridView.count(
                  crossAxisCount: _ajustarVisualizacao(largura),
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: [
                    ItemProduto("Kit Multimídia", "2.500,00", "p1.jpg"),
                    ItemProduto("Pneu Goodyear aro 16", "800,00", "p2.jpg"),
                    ItemProduto("Samsung 9", "4.100,00", "p3.jpg"),
                    ItemProduto("Samsung Edge", "2.150,90", "p4.jpg"),
                    ItemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
                    ItemProduto("Iphone 10", "1.900,00", "p6.jpg"),
                    ItemProduto("Kit Multimídia", "2.500,00", "p1.jpg"),
                    ItemProduto("Pneu Goodyear aro 16", "800,00", "p2.jpg"),
                    ItemProduto("Samsung 9", "4.100,00", "p3.jpg"),
                    ItemProduto("Samsung Edge", "2.150,90", "p4.jpg"),
                    ItemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
                    ItemProduto("Iphone 10", "1.900,00", "p6.jpg"),

                ],
              ),
            ),

          );
        }
    );
    }
  }
