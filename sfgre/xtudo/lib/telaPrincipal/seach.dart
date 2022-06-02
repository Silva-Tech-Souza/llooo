import 'package:flutter/material.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({Key? key}) : super(key: key);

  @override
  _QrCodePageState createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  TextEditingController pesquisa = TextEditingController();

  getWidgets() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(6),
        height: 120,
        width: 183,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 211, 211, 211),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(232, 36, 36, 36).withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(1, -1),
            ),
          ],
          //borderRadius: BorderRadius.circular(100),
          // color: const Color.fromARGB(255, 255, 255, 255)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recipe Photo
            Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(213, 243, 232, 77),
                    Color.fromARGB(213, 0, 153, 241),
                  ],
                ),
                /* image: DecorationImage(
                  image: AssetImage(data.photo),
                  fit: BoxFit.cover,
                ),*/
              ),
            ),
            // Recipe title
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 8),
              padding: const EdgeInsets.only(left: 4),
              child: const Text(
                "Nome da Empresa",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'inter'),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // Recipe calories and time
            Row(
              children: [
                const Icon(
                  Icons.map,
                  size: 14,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const Text(
                    'SP',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.star_border,
                  size: 14,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const Text(
                    '4',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    showConfirmation(BuildContext context) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return CustomDialog();
          });
    }

    return Scaffold(
      body: Container(
        width: sizeW,
        height: sizeH,
        color: Color.fromARGB(255, 255, 255, 255),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: sizeH * 0.18,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 1, 39, 61),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(2),
                      width: sizeW * 0.89,
                      height: 45,
                      child: TextFormField(
                        controller: pesquisa,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 54, 144, 247)),
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 1, 97, 207)),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          hintText: "Pesquise",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: sizeW * 0.09,
                      height: 45,
                      child: IconButton(
                        onPressed: () {
                          showConfirmation(context);
                        },
                        icon: const Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: sizeW * 0.99,
                height: sizeH * 0.78,
                child: Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(10, (index) {
                      return getWidgets();
                    }),
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

class CustomDialog extends StatefulWidget {
  @override
  CustomDialogoState createState() => CustomDialogoState();
}

class CustomDialogoState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return AlertDialog(
      title: Text("Filtro"),
      content: Container(
        width: sizeW,
        height: sizeH,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text("adionanco os modelos de filtro"),
            )
          ],
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Aplicar")),
      ],
    );
  }
}
