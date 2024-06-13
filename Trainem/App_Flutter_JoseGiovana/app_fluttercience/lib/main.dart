// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

/*class NavigationBar extends StatelessWidget{
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavegarExemplo(),
    );
  }
}
class NavegarExemplo extends StatefulWidget{
  const NavegarExemplo ({super.key});

  @override
  State <NavegarExemplo> createState() => _NavegacaoExemploState();
}
*/


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        //os centraliza dentro da tela
        body: AppBar(
          title: Column(
          //um child widget que contém a child coluna onde aparece os widgets do app
            children: [ Row(
              //criando um children que conterá as imagem do APP e login, sendo todos em um widget só
              children: <Widget>[
                Expanded(
                    child: Image.asset('assets/images/APP_imagem.jpeg',
                    height: 100.0,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Image.asset('assets/images/APP_login.jpeg'), 
                    iconSize: 0.5, 
                    onPressed: () {  },
                  ),
                ),
              ],
            ),
              ],
              ),
            ),
                SizedBox(
                  height: 5.0,
                  width: 1.0,
                  child: Image(image: AssetImage('assets/images/APP_imgbckgrd.jpeg',),),
                ),
              ],),
    );
  }
}
