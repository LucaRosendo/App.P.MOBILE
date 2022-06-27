import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'desc_pag.dart';

class PaginaInicial extends StatefulWidget{
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  _PaginaInicial createState()=> _PaginaInicial();
}

class _PaginaInicial extends State<PaginaInicial>{
  Desc item1 = Desc(
   titlo: 'Resumo',
  );
  Desc item2 = Desc(
    titlo: 'Exercícios',
  );
  Desc item3 = Desc(
    titlo: 'Mapas mentais',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  buildBody(){
    return ListView(
      children: [
        const SizedBox(height: 20),
        const Text("Começe seus estudos",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),

        buildField('Resumo'),
        buildField('Exercício'),
        buildField('Mapas mentais'),
      ],
    );
  }
}

buildField(String text){
  return Container(
    height: 50,
    margin: const EdgeInsets.fromLTRB(10, 16, 10, 15),
    padding: const EdgeInsets.all(6),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: const Color(0xFFE0E0E0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
        ),
        child: Row(
          children: [
            Icon(Icons.menu_book),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(text,
              style: const TextStyle(
                fontSize: 20,
              ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
