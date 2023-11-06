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
              padding: EdgeInsets.only(bottom: 0, left: 50, top: 0, right: 0),
              child:
                TextField(
                  style: TextStyle(color: primaryColor),
                  decoration: InputDecoration(
                    icon: ImageIcon(AssetImage('assets/icos/envelope.png'), color: primaryColor),
                    hintText: 'Email',
                  ),
                )
            ),
            ],
        ),
      )
    );
  }

}