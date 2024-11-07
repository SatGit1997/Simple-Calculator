import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageAdd extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<HomePageAdd>{

  TextEditingController no1Controller = TextEditingController();
  TextEditingController no2Controller = TextEditingController();

  int? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Simple Add')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: no1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text('No1'),
                hintText: 'Enter no1 here..',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.green
                  )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                )
              ),
            ),
            SizedBox(
              height: 30,),
            TextField(
              controller: no2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text('No2'),
                hintText: 'Enter no2 here..',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.green
                  )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21)
                )
              ),
            ),
            SizedBox(
              height: 30,),
            ElevatedButton(onPressed: (){
              int no1 = int.parse(no1Controller.text);
              int no2 = int.parse(no2Controller.text);

              result = no1+no2;
              setState(() {

              });

              },child: Text('Add'),style: ElevatedButton.styleFrom(
            shadowColor: Colors.green,),),
            SizedBox(
              height: 30,),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child: Text('Result:           ${result ?? ""}',style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),)),
            )
          ],
        ),
      ),
    );
  }
}