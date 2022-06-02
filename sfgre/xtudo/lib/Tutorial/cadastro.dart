import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../Banco_de_dados/apicep.dart';
import '../telaPrincipal/principal.dart';

class CadastroPartes extends StatefulWidget {
  const CadastroPartes({required this.email, required this.senha});
  final String email;
  final String senha;
  @override
  State<CadastroPartes> createState() => _CadastroPartesState();
}

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }
}

class _CadastroPartesState extends State<CadastroPartes> {
  bool caregandoCEP = false;
  double sizeWContainer = 1500;
  double sizeHContainer = 1500;
  int tipoCadastro = 1;
  String estado = "São Paulo", cidade = "São Paulo";
  Color corContainer = Colors.white;
  TextEditingController nomecomple = TextEditingController();
  TextEditingController cell = TextEditingController();
  TextEditingController cep = TextEditingController();
  bool erroCadastro = false;
  //cadastro
  Future<void> registerAccount(
      String email,
      String displayName,
      String password,
      String celular,
      String estad,
      String cidads,
      void Function(FirebaseAuthException e) errorCallback) async {
    try {
      var methods = await FirebaseAuth.instance
          .fetchSignInMethodsForEmail(email.toString());
      if (methods.contains('password')) {
        erroCadastro = true;
      } else {
        erroCadastro = false;
        if (password == null) {
        } else {
          var credential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(email: email, password: password);
          await credential.user!.updateDisplayName(displayName);
        }
        DatabaseReference ref = FirebaseDatabase.instance
            .ref("Users")
            .child(displayName.toString());
        await ref.set({
          'name': displayName,
          'email': email,
          'cell': celular,
          'cidade': cidads,
          'estado': estad
        }).then((value) => null //segurar a execução até a task ser terminada
            );
      }
    } on FirebaseAuthException catch (e) {
      debugPrint('erro: ${e}');
      errorCallback(e);
    }
  }

  var maskFormatFone = MaskTextInputFormatter(
    mask: '## #####-####',
    filter: {"#": RegExp(r"[0-9]")},
    type: MaskAutoCompletionType.lazy,
  );

  var maskFormatCEP = MaskTextInputFormatter(
    mask: '#####-###',
    filter: {"#": RegExp(r"[0-9]")},
    type: MaskAutoCompletionType.lazy,
  );
  List<String> explicacao = [
    "Olá! Bem-vindo ao Xtudo! Primeiro, vamos precisar do seu nome! Digite ele abaixo:",
    "Seja Bem-vindo, agora para poder confirmar alguns dados vamos precisar do seu celular:",
    "Certo, agora para poder ter uma esperiencia completa precisamos do seu CEP:"
  ];
  void _searching(bool enable) {
    setState(() {});
  }

  Future _searchCep() async {
    _searching(true);

    final ceps = cep.text.replaceAll("-", "");

    final resultCep = await ViaCepService.fetchCep(cep: ceps);
    estado = resultCep.uf.toString();
    cidade = resultCep.localidade.toString();
    setState(() {
      debugPrint('erro: ${resultCep.toJson()}');
    });

    _searching(false);
  }

  @override
  void initState() {
    super.initState();
    tipoCadastro = 1;
  }

  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: sizeW,
        height: sizeH,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF39D4D),
              Color(0xFF0099F1),
            ],
          ),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
          width: sizeW * 0.9,
          height: sizeH * 0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/logoG.png',
                    fit: BoxFit.fill,
                    height: sizeH * 0.15,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    "Bem Vindo",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        color: Color.fromARGB(255, 1, 15, 46)),
                  ),
                ],
              ),
              SizedBox(
                height: sizeH * 0.03,
              ),
              TextFormField(
                controller: nomecomple,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 107, 162, 207)),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 1, 97, 207)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  fillColor: Color.fromARGB(136, 185, 223, 248),
                  filled: true,
                  labelText: "Nome",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'É necessário digitar o seu Nome.';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: sizeH * 0.03,
              ),
              TextFormField(
                controller: cell,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 107, 162, 207)),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 1, 97, 207)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  fillColor: Color.fromARGB(136, 185, 223, 248),
                  filled: true,
                  labelText: "Celular",
                ),
                inputFormatters: [maskFormatFone],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'É necessário digitar o seu Celular.';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: sizeH * 0.03,
              ),
              TextFormField(
                controller: cep,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 107, 162, 207)),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 1, 97, 207)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  fillColor: Color.fromARGB(136, 185, 223, 248),
                  filled: true,
                  labelText: "CEP",
                ),
                inputFormatters: [maskFormatCEP],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'É necessário digitar o seu CEP.';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: sizeH * 0.03,
              ),
              InkWell(
                onTap: () async {
                  try {
                    setState(() {
                      caregandoCEP = true;
                    });
                    await _searchCep().then((value) => () {
                          setState(() {
                            caregandoCEP = false;
                          });
                        });

                    await registerAccount(
                        widget.email.toString(),
                        nomecomple.text.toString(),
                        widget.senha.toString(),
                        cell.text.toString(),
                        estado.toString(),
                        cidade.toString(),
                        (e) => 'Criação de conta falhou');
                    if (!erroCadastro) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const Principal()));
                    } else {
                      const snackBar = SnackBar(
                        content: Text("Esse Email já esta cadastrado.",
                            style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.black12,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  } catch (e) {
                    debugPrint('erro: ${e.toString()}');
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 3,
                          color: const Color.fromARGB(255, 18, 110, 196)),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  child: caregandoCEP
                      ? const CircularProgressIndicator(
                          color: Color.fromARGB(255, 18, 110, 196),
                        )
                      : Text(
                          tipoCadastro == 3 ? "Cadastrar" : "Continuar",
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 18, 110, 196)),
                        ),
                ),
              ),
              SizedBox(
                height: sizeH * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
