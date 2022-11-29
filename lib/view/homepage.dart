import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meuapp/controller/buttons.dart';
import 'package:meuapp/view/button-myagend.dart';
import 'package:meuapp/view/button-mydocuments.dart';
import 'package:meuapp/view/button-myfotos.dart';
import 'package:meuapp/view/button-mymaps.dart';
import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  final List<Widget> _children = [
    const Home(),
    const Person(),
    const Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(
                width: 250,
                height: 250,
                child: Image.asset('images/logo.png'),
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 150,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.redAccent[400]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyDocuments(),
                      ),
                    );
                  },
                  child: const Text('Doc.'),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 60,
                width: 150,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.greenAccent[400]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyAgend(),
                      ),
                    );
                  },
                  child: const Text('Agenda'),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 150,
                color: Colors.blue[400],
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.greenAccent[400]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyMaps(),
                      ),
                    );
                  },
                  child: const Text('Localização'),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 60,
                width: 150,
                color: Colors.blue[400],
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.redAccent[400]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyFotos(),
                      ),
                    );
                  },
                  child: const Text('Fotos'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Contatos extends StatefulWidget {
  const Contatos({super.key});

  @override
  State<Contatos> createState() => _ContatosState();
}

class _ContatosState extends State<Contatos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Contatos dos Clientes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            backgroundColor: Colors.blue[300],
          ),
        ),
      ),
    );
  }
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
      child: Center(
        child: Text(
          'Configurações',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            backgroundColor: Colors.blue[300],
          ),
        ),
      ),
    );
  }
}
