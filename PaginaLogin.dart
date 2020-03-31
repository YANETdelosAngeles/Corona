import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'PaginaMain.dart';

class PaginaLogin extends StatelessWidget{
  Widget nameUserInput(){
      return Padding(
        padding: const EdgeInsets.only(top: 50),
        child:  TextFormField(
          decoration: InputDecoration(hintText: 'Usuario'),
        ),
      );
  }

  Widget passwordInput(){
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Contraseña'),
      ),
    );
  }

  Widget createLoginButton(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: RaisedButton(
          child: Text('Iniciar Sesión'),
            color: new Color(0xff031d68),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => new PaginaMain()));
            }
      ),
    );
  }

  Widget createAccountLink() {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: Text(
              '¿Olvidaste tu contraseña?',
              textAlign: TextAlign.right,
              style: TextStyle(fontWeight: FontWeight.bold, color: new Color(0xff031d68)),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
              ),
              Image.asset('assets/images.png',height: 200),
              nameUserInput(),
              passwordInput(),
              createLoginButton(context),
              createAccountLink(),
            ],
          )
        )
    );
  }
}