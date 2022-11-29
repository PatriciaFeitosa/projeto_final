import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDocuments extends StatefulWidget {
  const MyDocuments({super.key});

  @override
  State<MyDocuments> createState() => _MyDocumentsState();
}

class _MyDocumentsState extends State<MyDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Documentos'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('Contratos'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Locações'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Orçamentos'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Eventos Finalizados'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}