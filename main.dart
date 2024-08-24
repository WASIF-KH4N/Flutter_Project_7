import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var arrData=[
    {
      'name':'Wasif','roll_no':'101','unread':'2'
    },
    {
      'name':'Faizan','roll_no':'102','unread':'6'
    },
    {
      'name':'Suleman','roll_no':'103','unread':'22'
    },
    {
      'name':'Zubair','roll_no':'104','unread':'3'
    },
    {
      'name':'Mubashir','roll_no':'105','unread':'99'
    },
    {
      'name':'Arman','roll_no':'106','unread':'1'
    },
    {
      'name':'Ahsaan','roll_no':'107','unread':'117'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
    title:Center(child: Text("MAPPING LISTS",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
      backgroundColor: Colors.cyan,
      ),
      body:Container(
        child: ListView(
          children: arrData.map((value)=>
          ListTile(
          leading: Icon(Icons.account_circle),
                title: Text(value['name'].toString()),
                subtitle: Text(value['roll_no'].toString()),
                trailing: CircleAvatar(
                  radius: 12,
          backgroundColor: Colors.cyan,
          child: Text(value['unread'].toString())),

          )
          ).toList()
          ),
      ),
    );
  }
}


          /*children:arrData.map((value) =>  Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Center(child: Text(value,style: TextStyle(fontWeight: FontWeight.w800),)),
                    ),
              ),
            ),
          ),
          ).toList()*/

