import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'PaginaLogin.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()
  {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: PaginaPrincipal(),
        //title: new Text('Bienvenidos'),
        image: Image.asset('assets/images.png'),
        backgroundColor: new Color(0xff031d68),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 120.0,
        loaderColor: Colors.transparent
    );
  }
}

class PaginaPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'titulo',
        theme: ThemeData(
          buttonTheme: ButtonThemeData(height: 40),
          textTheme: TextTheme(
              subhead: TextStyle(
                fontSize: 18,
              ),
              button: TextStyle(
                fontSize: 15,
              ),
          ),
        ),
        home: PaginaLogin()
    );
  }
}