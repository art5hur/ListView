
import 'package:flutter/material.dart';
import 'package:listview/contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListaPage(),
    );
  }
}

class ListaPage extends StatelessWidget {
   ListaPage({super.key});

  List<Contato> contatos =  [
          Contato(nome: 'Alma', email: 'email01'),
          Contato(nome: 'Sergio', email: 'email@2'),
          Contato(nome: 'Maio', email: 'email@3'),
          Contato(nome: 'Miguel', email: 'email@4'),
        ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listview builder'),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return 
          ListTile(
            leading: CircleAvatar(),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
          );
        },
      ),
    );
  }
}
