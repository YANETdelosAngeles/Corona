import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaMain extends StatelessWidget {
  Widget userName(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
      child:
        Text("¡BIENVENIDO Carlos Arturo Hernandez Garcia!",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
    );
  }

  Widget buscarButton(){
    return Padding(
      padding: const EdgeInsets.only(left: 35,right: 5),
      child:
        IconButton(
          icon: Icon(Icons.search, color: Colors.lightBlue,size: 50,),
          tooltip: 'Buscar',
          onPressed: (){},
        ),
    );
  }

  Widget reportButton(){
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 5),
      child:
        IconButton(
          icon: Icon(Icons.description, color: Colors.lightBlue,size: 50,),
          tooltip: 'Reportes',
          onPressed: (){},
        ),
    );
  }

  Widget avisosButton(){
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 5),
      child:
        IconButton(
          icon: Icon(Icons.mail_outline, color: Colors.lightBlue,size: 50,),
          tooltip: 'Avisos',
          onPressed: (){},
        ),
    );
  }

  Widget sincroButton(){
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 5),
      child:
        IconButton(
          icon: Icon(Icons.cloud, color: Colors.lightBlue,size: 50,),
          tooltip: 'Sinc.',
          onPressed: (){},
        ),
    );
  }

  Widget metasButton(){
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 5),
      child:
      IconButton(
        icon: Icon(Icons.person, color: Colors.lightBlue,size: 50,),
        tooltip: 'Mis metas',
        onPressed: (){},
      ),
    );
  }

  Widget configButton(){
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 5),
      child:
      IconButton(
        icon: Icon(Icons.build, color: Colors.lightBlue,size: 50,),
        tooltip: 'Mis metas',
        onPressed: (){},
      ),
    );
  }

  Widget firstRowMenuPrincipal(){
    return Padding(
      padding: const EdgeInsets.only(top:20),
      child: new Row(
        children: <Widget>[
          buscarButton(),
          //Text('Buscar',textAlign: TextAlign.center,),
          reportButton(),
          //Text('Report'),
          avisosButton(),
        ],
      ),
    );
  }

  Widget secondRowMenuPrincipal(){
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: new Row(
        children: <Widget>[
          sincroButton(),
          metasButton(),
          configButton(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CMM Mobile"),
          backgroundColor: new Color(0xff031d68),
        ),
        body: Container(
          child: new Column(
            children: <Widget>[
              userName(),
              firstRowMenuPrincipal(),
              secondRowMenuPrincipal(),
            ]
          ),
        ),
    );
  }

}