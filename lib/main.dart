import 'package:flutter/material.dart';
import 'package:pojetoflutter1/Orientacao.dart';
import 'package:pojetoflutter1/diferentes_tamanhos.dart';
import 'package:pojetoflutter1/loja_virtual.dart';
import 'package:pojetoflutter1/regras_layout.dart';
import 'package:pojetoflutter1/responsividade_media_query.dart';
import 'package:pojetoflutter1/responsividade_row_col.dart';
import 'package:pojetoflutter1/responsividade_wrap.dart';
import 'package:pojetoflutter1/tamanho_proporcional.dart';
import 'package:pojetoflutter1/tamanho_textos.dart';

void main() {
  runApp(MaterialApp(
    title: "bikes.com.br",
    debugShowCheckedModeBanner: false,
    //home: ResponsividadeMediaQuery(),
    //home: ResponsividadeRowCol(),
    //home: ResponsividadeWrap(),
    //home: Orientacao(),
    //home: RegrasLayout(),
    //home: LojaVirtual(),
    //home: TamanhoTextos(),
    //home: TamanhoProporcional(),
    home: DiferentesTamanhos(),

  ));
}
