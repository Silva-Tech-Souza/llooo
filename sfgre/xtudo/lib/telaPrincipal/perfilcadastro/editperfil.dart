import 'package:flutter/material.dart';

class EditPerfil extends StatefulWidget {
  const EditPerfil({Key? key}) : super(key: key);

  @override
  State<EditPerfil> createState() => _EditPerfilState();
}

class _EditPerfilState extends State<EditPerfil> {
  TextEditingController nomecomple = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Editar Perfil",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 22,
              fontWeight: FontWeight.w900),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 39, 61),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: sizeW,
              child: Column(
                children: [
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: sizeH * 0.05,
                        ),
                        TextFormField(
                          controller: nomecomple,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 107, 162, 207)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 1, 97, 207)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                          height: sizeH * 0.08,
                        ),
                        TextFormField(
                          controller: nomecomple,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 107, 162, 207)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 1, 97, 207)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            fillColor: Color.fromARGB(136, 185, 223, 248),
                            filled: true,
                            labelText: "Email",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'É necessário digitar o seu Email.';
                            }
                            return null;
                          },
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
                                  width: 2,
                                  color: Color.fromARGB(255, 107, 162, 207)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 1, 97, 207)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            fillColor: Color.fromARGB(136, 185, 223, 248),
                            filled: true,
                            labelText: "Celular",
                          ),
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
                        Container(
                          width: sizeW,
                          child: Row(
                            children: [
                              Container(
                                width: sizeW * 0.4,
                                child: TextFormField(
                                  controller: nomecomple,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(
                                              255, 107, 162, 207)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color:
                                              Color.fromARGB(255, 1, 97, 207)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    fillColor:
                                        Color.fromARGB(136, 185, 223, 248),
                                    filled: true,
                                    labelText: "Data Nascimento",
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Digite sua Data de Nascimento.';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Container(
                                width: sizeW * 0.3,
                                child: TextFormField(
                                  controller: nomecomple,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(
                                              255, 107, 162, 207)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color:
                                              Color.fromARGB(255, 1, 97, 207)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    fillColor:
                                        Color.fromARGB(136, 185, 223, 248),
                                    filled: true,
                                    labelText: "CEP",
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'É necessário digitar o seu CEP.';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
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
                                  width: 2,
                                  color: Color.fromARGB(255, 107, 162, 207)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 1, 97, 207)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            fillColor: Color.fromARGB(136, 185, 223, 248),
                            filled: true,
                            labelText: "Instagram",
                          ),
                        ),
                        SizedBox(
                          height: sizeH * 0.03,
                        ),
                        SizedBox(
                          height: sizeH * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(width: 16),
                            StyledButton(
                              onPressed: () {},
                              child: const Text(
                                'Atualizar',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StyledButton extends StatelessWidget {
  const StyledButton({required this.child, required this.onPressed});
  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) => OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Color.fromARGB(255, 18, 110, 196))),
        onPressed: onPressed,
        child: child,
      );
}
