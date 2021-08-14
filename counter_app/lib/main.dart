import 'package:flutter/material.dart';

void  main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple),// Criar uma color (notificação)
    home: HomePage(),

  ));
}


class HomePage extends StatefulWidget{ //Criar Componente //Muda Estado

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void increment(){
    count++;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(//Instanciar Header
        title: Text("Meu Primeiro App!"),//Header
      ),
      body: Center(
        child: Text(
          "CONTADOR\n0$count", 
          textAlign: TextAlign.center,
          )),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              increment();
            },
          ),

    );
    
  }
}