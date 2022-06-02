// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:xtudo/telaPrincipal/principal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _containerEmpresa(sizeH, sizeW) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: sizeW * 0.75,
          height: sizeH * 0.24,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(213, 243, 232, 77),
                Color.fromARGB(213, 0, 153, 241),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(232, 36, 36, 36).withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 8,
                offset: const Offset(0, -2),
              ),
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizeH * 0.09,
                ),
                const Text(
                  "Nome da Empresa",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const Text(
                  "Ramo",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }

  Widget _containerTipo(sizeH, sizeW, String titulo) {
    return Container(
      width: sizeW * 0.95,
      height: sizeH * 0.12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: sizeW * 0.95,
            height: sizeH * 0.12,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(213, 243, 88, 77),
                  Color.fromARGB(213, 0, 153, 241),
                ],
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 0, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    titulo.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(4),
      child: Row(
        children: const [
          Text(
            'Tudo que você procura',
            style:
                TextStyle(color: Color.fromARGB(255, 61, 61, 61), fontSize: 17),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:
                  Divider(thickness: 1, color: Color.fromARGB(255, 61, 61, 61)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "XTUDO",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 22,
              fontWeight: FontWeight.w900),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 39, 61),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          )
        ],
      ),
      body: Container(
        width: sizeW,
        height: sizeH,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: sizeH * 0.02,
              ),
              Container(
                width: sizeW,
                padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                height: sizeH * 0.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _containerEmpresa(sizeH, sizeW),
                    SizedBox(
                      width: 8,
                    ),
                    _containerEmpresa(sizeH, sizeW),
                    SizedBox(
                      width: 8,
                    ),
                    _containerEmpresa(sizeH, sizeW),
                  ],
                ),
              ),
              _divider(),
              SizedBox(
                height: sizeH * 0.02,
              ),
              Container(
                width: sizeW,
                padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                height: sizeH * 0.4,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _containerTipo(sizeH, sizeW, "Confeccionista"),
                      SizedBox(
                        height: 5,
                      ),
                      _containerTipo(sizeH, sizeW, "Fornecedores"),
                      SizedBox(
                        height: 5,
                      ),
                      _containerTipo(sizeH, sizeW, "Serviços"),
                      SizedBox(
                        height: 5,
                      ),
                      _containerTipo(sizeH, sizeW, "Moldes e Modelos"),
                      SizedBox(
                        height: 5,
                      ),
                      _containerTipo(sizeH, sizeW, "Vagas e Estágios"),
                      SizedBox(
                        height: 5,
                      ),
                      _containerTipo(sizeH, sizeW, "Cursos"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
