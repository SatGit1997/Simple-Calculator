import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageCalc extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<HomePageCalc>{

  TextEditingController no1Controller = TextEditingController();
  TextEditingController no2Controller = TextEditingController();

  String result = "";
  int flag = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Calculator')),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      flag = 1;
                      setState(() {
        
                      });
                    },
                    child: Container(
                      width: 60 ,
                      height: 60 ,
                      decoration: mydecoration(flag==1 ? true : false),
                      child: Center(child: Text('+',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),
        
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      flag = 2;
                      setState(() {
        
                      });
                    },
                    child: Container(
                      width: 60 ,
                      height: 60 ,
                      decoration: mydecoration(flag==2 ? true : false),
                      child: Center(child: Text('-',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),
        
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      flag = 3;
                      setState(() {
        
                      });
                    },
                    child: Container(
                      width: 60 ,
                      height: 60 ,
                      decoration: mydecoration(flag==3 ? true : false),
                      child: Center(child: Text('*',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),
        
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      flag = 4;
                      setState(() {
        
                      });
                    },
                    child: Container(
                      width: 60 ,
                      height: 60 ,
                      decoration: mydecoration(flag==4 ? true : false),
                      child: Center(child: Text('/',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),
        
                    ),
                  ),
        
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: ()
              {
                int no1 = int.parse(no1Controller.text);
                int no2 = int.parse(no2Controller.text);
        
                if(flag == 1){
                  result = "The Sum of $no1 and $no2 is ${no1+no2}";
                }else if(flag ==2){
                  int sub = 0;
                  if(no1>no2){
                    sub = no1-no2;
                  }else {
                    sub = no2-no1;
                    result = "The Difference between $no1 and $no2 is $sub";
                  }
        
                }else if (flag ==3){
                  result = "The Product of $no1 and $no2 is ${no1*no2}";
                }else if ( flag ==4){
                  result = "The Division of $no1 by $no2 is ${no1/no2}";
                }else{
                  result = "Please choose any operator!!";
                }
                setState(() {
        
                });
        
              },
        
                child: Text('Result'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff73ba70),
                    foregroundColor: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 5
                ),),
              SizedBox(
                height: 30,),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(child: Text('$result',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),)),
              )
            ],
          ),
        ),
      ),
    );
  }
  BoxDecoration mydecoration(bool isSelected){
    return BoxDecoration(
      border: isSelected ? Border.all(
        strokeAlign: BorderSide.strokeAlignCenter,
        width: 6,
        color: Colors.green,
      ): Border.all(
        width: 0,
        color: Colors.transparent
      ),
        color: Color(0xff9dac95),
        borderRadius: BorderRadius.circular(11)
    );
  }
}

