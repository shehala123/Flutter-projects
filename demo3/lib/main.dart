import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              const Color.fromARGB(255, 214, 121, 71),
              const Color.fromARGB(255, 209, 115, 38),
              const Color.fromARGB(255, 244, 167, 53)
            ]
          )
        ),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5,),
            Padding (
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Text("Login",style: TextStyle(color: Colors.white,fontSize: 40),),
              SizedBox(height: 10,),
              Text("Welcome back",style: TextStyle(color: Colors.white,fontSize: 18),),
            ],
            ),
            ),
            SizedBox(height: 20,),
         Expanded(
          child: Container(
            decoration:BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
               ),
               child: Padding(
               padding: EdgeInsets.all(10),
               child:Column(
                children: [
                  SizedBox(height: 60,),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        
                        
                        color: Color.fromRGBO(225,95,27,.3),
                        blurRadius: 20,
                        offset: Offset(0,10)
                      )]
                    ),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "email or phone number",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none
                          ),
                        ),
                      )
                    ],),

                  ),
                  Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "password",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none
                          ),
                        ),
                      )
                ],

               )
            ),
           
            ),
            ),
             SizedBox(height: 40,),
             
             Text("forgott password",style:TextStyle(color: Colors.grey),),
             SizedBox(height: 40,),
             Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.orange[900]
                ),
                child: Center(
                child:Text("login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight:FontWeight.bold
                )),),
             )
           
            
            
        ],
        )
        ),
    );
  }
}