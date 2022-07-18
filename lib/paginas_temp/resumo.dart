import 'package:flutter/cupertino.dart';

class Resumo extends StatefulWidget {
  const Resumo({Key? key}) : super(key: key);

  @override
  State<Resumo> createState() => _ResumoState();
}

class _ResumoState extends State<Resumo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: Text("Resumo"),)
    );
  }
}

