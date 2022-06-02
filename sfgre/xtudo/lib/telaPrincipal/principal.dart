// ignore: import_of_legacy_library_into_null_safe
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'localgas.dart';
import 'profile.dart';
import 'seach.dart';
import 'relatorios.dart';

@immutable
class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  GlobalKey bottomNavigationKey = GlobalKey();
  int telasindexState = 1;
  telasAtivas(int telas) {
    if (telas == 1) {
      return const HomePage();
    }
    if (telas == 2) {
      return const QrCodePage();
    }
    if (telas == 3) {
      return const LocalGasPage();
    }
    if (telas == 4) {
      return const RelatoriosPage();
    }
    if (telas == 5) {
      return const ProfilePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color.fromARGB(255, 255, 188, 2),
          key: bottomNavigationKey,
          height: 60,
          index: 0,
          items: const [
            Icon(Icons.home, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.business_center, size: 30),
            Icon(Icons.article_outlined, size: 30),
            Icon(Icons.account_box_rounded, size: 30),
          ],
          onTap: (index) {
            setState(() {
              telasindexState = index + 1;
            });
          }),
      body: telasAtivas(telasindexState),
    );
  }
}
