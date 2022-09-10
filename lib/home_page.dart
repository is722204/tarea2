import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TODO: completar todo lo necesario
 var radioGroup = {
      0: "Amazing (20%)",
      1: "Good (18%)",
      2: "Okay (15%)",
    };
  var isSwitched =false;
  var amount=0.0;
  int? currentRadio;

  final costController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        const SizedBox(height: 14),
        ListTile(
          leading: Icon(Icons.store),
          title: Padding(
            padding: EdgeInsets.only(right: 24),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cost of service',
                // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green))
              ),
              keyboardType: TextInputType.number,
              controller: costController,
            ),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.room_service),
          title: Text("How was the service?"),
        ),
        Column(
          children: radioGroupGenerator(),
        ),
        ListTile(
          leading: const Icon(Icons.arrow_upward),
          title: const Text("Round up tip"),
          trailing: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          
        ),
        MaterialButton(
          child: const Text("CALCULATE"),
          color: Colors.green,
          onPressed: ()=>{
            _tipCalculation()
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Tip amount: \$ ${amount}",textAlign: TextAlign.end),
        ),
      ],
    );
  }

  _tipCalculation() {
    // amount=double.parse(costController.text);
    if(currentRadio==0){
      amount=double.parse(costController.text)*.20;
    }
    else if(currentRadio==1){
      amount=double.parse(costController.text)*.18;
    }
    else if(currentRadio==2){
      amount=double.parse(costController.text)*.15;
    }

    if(isSwitched==true){
      amount=amount.ceil()/1.0;
    }
    setState(() {
      
    });
  }


  radioGroupGenerator() {
    return radioGroup.entries
        .map(
          (radioElement) => ListTile(
            leading: Radio(
              value: radioElement.key,
              groupValue: currentRadio,
              onChanged: (int? selected) {
                currentRadio = selected;
                setState(() {});
              },
            ),
            title: Text("${radioElement.value}"),
          ),
        )
        .toList();
  }
}
