import 'package:devagram_flutter/Constant/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget{
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/imgs/Logo.png"),
            const Padding(
              padding: EdgeInsets.only(bottom: 0, left: 32, top: 0, right: 32),
              child:
                TextField(
                  style: TextStyle(color: primaryColor),
                  decoration: InputDecoration(
                    icon: ImageIcon(AssetImage('assets/icos/envelope.png'), color: primaryColor),
                    hintText: 'Email',
                  ),
                )
            ),
            const Padding(
                padding: EdgeInsets.only(bottom: 0, left: 32, top: 0, right: 32),
                child:
                TextField(
                  obscureText: true,
                  style: TextStyle(color: primaryColor),
                  decoration: InputDecoration(
                    icon: ImageIcon(AssetImage('assets/icos/key.png'), color: primaryColor),
                    hintText: 'Senha',
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0, left: 32, top: 48, right: 32),
              child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // <-- Radius
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: primaryColor,
                      minimumSize: Size(size.width,48),
                    ),
                    child: const Text('Login'),
                ),
            ),
             const Padding(
              padding: EdgeInsets.only(bottom: 0, left: 0, top: 24, right: 0),
              child: Text(
                  'Não possui conta?',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: grayColor)
              ),
            ),
            const Text('Faça seu cadastro agora!',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: primaryColor,
              decoration: TextDecoration.underline,
            ),
            )
            ],
        ),
      )
    );
  }

}