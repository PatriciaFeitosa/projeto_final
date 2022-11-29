import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meuapp/view/button-myagend.dart';
import 'package:meuapp/view/button-mydocuments.dart';
import 'package:meuapp/view/button-myfotos.dart';
import 'package:meuapp/view/button-mymaps.dart';
import 'package:meuapp/view/myapp.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:meuapp/view/homepage.dart';
import 'package:meuapp/controller/buttons.dart';


void main() {
  runApp(const MyApp());
}



class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Center(child: Text('Botão Settings', style: TextStyle(fontSize: 60))),
    );
  }
}

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Botão Pessoas',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}

/*class _ContatosState extends State<Contatos> {
  int? idContato;
  var nomeContato;

  _openBanco() async{
    var dataBasePath = await getDatabasesPath();
    String path = join(dataBasePath, 'banco.db');
    var bd = await openDatabase(path, version: 1,
      onCreate: (db, versaoRecente) async {
      String sql = "CREATE TABLE contatos (id INTEGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR)";
      await db.execute(sql);
    });
    return bd;
  }

  _salvar() async{
    Database db = await _openBanco();
    Map<String, dynamic> dadosContatos = {

    };
    setState(() {
      //idContato = await db.query(Contatos());
    });
  }

  @override
  Widget build(BuildContext context) {
    _openBanco();
    _salvar();
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: Column(
        children: [Text('cont')],
      )
    );
  }
}*/
