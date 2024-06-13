// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:html';
import 'package:flutter/cupertino.dart';
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
        //Widgets se da column se fixam na parte de cima do App
        appBar: AppBar(
          backgroundColor: Colors.black,
          flexibleSpace: SafeArea(
          //um child widget que contém a child coluna onde aparece os widgets do app
            child: Row(
              //criando um children que conterá as imagem do APP e login, sendo todos em um widget só
              children:[
                //alocando imagem usando propriedade do children, ela expande widgets em um local na arvore em que se situa
                Expanded(
                    child: Image.asset('assets/images/APP_imagem.jpeg',
                    height: 50.0,
                    width: 50.0,
                    alignment: Alignment.center,
                  ),
                ),
                //colocando na Row um IconeButton para interação (butão de login)
                Row(
                  children: [IconButton(
                    iconSize: 1.0,
                    icon: Image.asset('assets/images/APP_login.jpeg'), 
                    onPressed: (){ 
                      /*.push(
                        context, 
                        MaterialPageRoute(builder: 
                        (context) => const NavigationBarApp())
                        );*/
                     },),
              ],),
              ],
            ),
              ),
            ),
            //parte do corpo, onde está a mais vista exposição/local
            body:
            //container que irá conter a exposição mais vista
            Container(
              color: Colors.white,
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/APP_imgbckgrd.jpeg'),

            ), 
      ),
    );
  }
}