import 'dart:ui';

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60, 
          left: 40, 
          right: 40,
        ),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
              SizedBox(
                width: 250,
                height: 250,
                child: Image.asset('images/logo.png'),
                ),
              SizedBox(
                  height: 20,
                ),
              Text('Faça seu cadastro',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.redAccent[400],
                  fontWeight: FontWeight.bold,
                  ),
              ),
              SizedBox(
                  height: 20,
                ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color:Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  ),
                ),
                style: TextStyle(
                  fontSize:20, 
                ),
              ),
              SizedBox(
                height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText:"E-mail",
                    labelStyle:TextStyle(
                      color:Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize:20,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize:20,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                Container(
                  height: 40,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3,1],
                      colors: [
                        Color(0xFFF58524),
                        Color(0xFFF92B7F),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                      ),
                  ),
                  child: SizedBox.expand(
                    child: ElevatedButton(
                      child: Text(
                        "Cadastrar",
                        style:TextStyle(
                          color:Colors.white,
                          fontSize: 20,
                        ),
                           textAlign: TextAlign.center,
                      ),
                      onPressed: (){
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder:(context)=> SignupPage(),
                          ),
                        );
                      }
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: SizedBox.expand(
                    child: ElevatedButton(
                      child:Text(
                        "Cancelar",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: ()=> Navigator.pop(context, false),
                    ),
                  ),
                ),
          ],
        ),
      ), 
    );
  }
}