import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {

  String amorAula = "";
  String maisCedo = "";
  bool sono = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioButton"),),
      body: Center(child: Column(children: [
        Text("Eu amo a Taylor Swift?"),
        Text("Sim"),
        Radio(value: "SIM", 
        groupValue: amorAula, 
        onChanged: (value){
          amorAula = value!;
          setState(() {
          });
        }),
        Text("Não"),
        Radio(value: "NÃO", 
        groupValue: amorAula, 
        onChanged: (value){
          amorAula = value!; 
          setState(() {  
          });
        }),
        ElevatedButton(
          onPressed: (){
            print("Amor a aula" + amorAula);
            print("Sair mais cedo" + maisCedo);
            print("Switch" + sono.toString());
          }, 
          child: Text("Ok")),
        Text("Sair mais cedo"),
        RadioListTile(
          title: Text("A Tânia está boazinha hoje"),
          subtitle: Text("Só hoje"),
          secondary: Icon(Icons.sentiment_very_satisfied),
          value: "SIM", 
          groupValue: maisCedo, 
          onChanged: (value){
            maisCedo = value!;
            setState(() {
              
            });
          }),
        RadioListTile(
          title: Text("A Tânia não está boazinha hoje"),
          subtitle: Text("Hoje não"),
          secondary: Icon(Icons.sentiment_very_dissatisfied),
          value: "NÃO", 
          groupValue: maisCedo, 
          onChanged: (value){
            maisCedo = value!;
            setState(() {
              
            });
          }),
        SwitchListTile(
          title: Text("Está com sono?"),
          subtitle: Text("Quero ir dormir"),
          secondary: Icon(Icons.bed),
          value: sono, 
          onChanged: (value){
            sono = value;
            setState(() {
              
            });
          } )
      ],)),
    );
  }
}