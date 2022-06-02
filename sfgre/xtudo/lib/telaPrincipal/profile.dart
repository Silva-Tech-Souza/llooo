import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as mat show Image;
import 'package:xtudo/telaPrincipal/perfilcadastro/editperfil.dart';

import '../main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  configurar() {
    showModalBottomSheet(
      elevation: 80,
      enableDrag: true,
      useRootNavigator: false,
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 70, 152, 190),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.35,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(100),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.01,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditPerfil()));
                      },
                      child: const Text(
                        "Editar Perfil",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          thickness: 1,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    const Text(
                      "Suporte",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          thickness: 1,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: const Text(
                        "Sair",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 39, 61),
        elevation: 0,
        title: const Text(
          "Nome do Usuário",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w100,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              configurar();
            },
            child: const Icon(
              Icons.settings_outlined,
              color: Colors.white,
            ),
            style: TextButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))),
          ),
        ],
      ),
      body: Container(
        width: sizeW,
        height: sizeH,
        color: Color.fromARGB(255, 226, 226, 226),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 1, 39, 61),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        margin: const EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 238, 238, 238),
                          borderRadius: BorderRadius.circular(100),
                          // Profile Picture
                          image: const DecorationImage(
                              image: AssetImage('images/logoG.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(width: 8),
                          Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: sizeH * 0.04,
              ),
              const Text(
                "Cidade - Estado",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 18, 110, 196),
                ),
              ),
              SizedBox(
                height: sizeH * 0.04,
              ),
              Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(232, 36, 36, 36)
                            .withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(1, -1),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(255, 255, 255, 255)),
                child: const ListTile(
                  title: Text("Cadastrar Empresa"),
                  leading: Icon(Icons.business),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              SizedBox(
                height: sizeH * 0.04,
              ),
              Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(232, 36, 36, 36)
                            .withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(1, -1),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(255, 255, 255, 255)),
                child: const ListTile(
                  title: Text("Cadastrar Curso"),
                  leading: Icon(Icons.school),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              SizedBox(
                height: sizeH * 0.04,
              ),
              Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(232, 36, 36, 36)
                            .withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(1, -1),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: const ListTile(
                  title: Text("Cadastrar Serviços"),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              SizedBox(
                height: sizeH * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
