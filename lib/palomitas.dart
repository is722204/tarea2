import 'package:flutter/material.dart';

class Palomitas extends StatefulWidget {
  const Palomitas({key});

  @override
  State<Palomitas> createState() => _PalomitasState();
}

class _PalomitasState extends State<Palomitas> {
  int _counter=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            
            children: [
              Image.network("https://media.istockphoto.com/photos/popcorn-in-bucket-picture-id497857462",width: 120,),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Palomitas (Medianas)", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  Text("$_counter" ,style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  Row(       
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(onPressed: (){more();}, icon: const Icon(Icons.arrow_upward), color: Colors.black,),
                      IconButton(onPressed: (){less();}, icon: const Icon(Icons.arrow_downward), color: Colors.black,)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  more(){
    _counter++;
    setState(() {
      
    });
  }
  less(){
    _counter--;
    setState(() {
      
    });
  }
}