import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:xtudo/Tutorial/cadastro.dart';
import 'package:xtudo/telaPrincipal/principal.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  bool login = true, errologin = false;
  String email = "", senha = "";

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    final UserCredential authResult =
        await FirebaseAuth.instance.signInWithCredential(credential);
    final User user = authResult.user!;

    if (authResult.additionalUserInfo!.isNewUser) {
      if (user != null) {
        login = false;
        email = user.email!;
      }
    } else {
      login = true;
    }
    return FirebaseAuth.instance.signInWithCredential(credential);
  }

  //login
  Future<String?> signInWithEmailAndPassword(
    String email,
    String password,
    void Function(FirebaseAuthException e) errorCallback,
  ) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      errologin = true;
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
      errologin = true;

      return "Email e senha não conferem";
    }
    return null;
  }

  Future<String?> _resetPassword(String email) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth.sendPasswordResetEmail(email: email.toString());
    } on FirebaseAuthException catch (e) {
      return "erro";
    }
    return null;
  }

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) async {
    String? resposta;
    await signInWithEmailAndPassword(data.name.toString(),
            data.password.toString(), (e) => "Email não cadastrado")
        .then((value) => {
              resposta = value,
            });

    return Future.delayed(loginTime).then((_) async {
      if (resposta != null) {
        return "Email e senha não conferem";
      } else {
        return null;
      }
    });
  }

  Future<String?> _signupUser(SignupData data) {
    return Future.delayed(loginTime).then((_) async {
      email = data.name.toString();
      senha = data.password.toString();
      login = false;
      return null;
    });
  }

  Future<String> _recoverPassword(data) {
    return Future.delayed(loginTime).then((_) {
      try {
        _resetPassword(data.toString());
      } catch (e) {}
      return 'dart';
    });
  }

  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return FlutterLogin(
      title: 'XTudo',
      theme: LoginTheme(
        titleStyle: TextStyle(fontSize: sizeW * 0.12),
        pageColorLight: const Color(0xFFF39D4D),
        pageColorDark: const Color(0xFF0099F1),
        footerBackgroundColor: Colors.black,
      ),
      footer: 'Versão 1.0',
      onLogin: _authUser,
      logo: const AssetImage('images/logoG2.png'),
      onSignup: _signupUser,
      messages: LoginMessages(
          providersTitleFirst: "OU",
          recoverCodePasswordDescription:
              "Após digitar seu email e enviar, cosulte o link enviado no seu Email",
          userHint: 'Email',
          passwordHint: 'Senha',
          loginButton: 'Entrar',
          recoverPasswordButton: "Enviar",
          goBackButton: "Voltar",
          confirmPasswordHint: "Confirme a senha",
          recoverPasswordDescription:
              "Vamos enviar um link para esse e-mail para redefinir a senha.",
          recoverPasswordSuccess: "Link enviado",
          forgotPasswordButton: 'Esqueceu a senha?',
          recoverPasswordIntro: "Recuperar senha",
          confirmationCodeValidationError: "Não é permitido campos vazios",
          signupButton: 'Cadastrar'),
      onSubmitAnimationCompleted: () {
        if (!login) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => CadastroPartes(
              email: email.toString(),
              senha: senha.toString(),
            ),
          ));
        } else {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const Principal(),
          ));
        }
      },
      loginProviders: <LoginProvider>[
        LoginProvider(
            icon: MdiIcons.google,
            label: "Google",
            callback: () async {
              signInWithGoogle();

              return null;
            }),
      ],
      termsOfService: [
        TermOfService(
          id: "aceita",
          mandatory: true,
          text: "Aceita as Politicas de Privacidade?",
          linkUrl: "",
          validationErrorMessage: "É necessário aceitar para poder entrar",
          initialValue: true,
        ),
      ],
      onRecoverPassword: _recoverPassword,
    );
  }
}
