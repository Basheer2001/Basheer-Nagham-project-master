import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'logout.dart';

class example extends StatefulWidget {
  const example({Key? key}) : super(key: key);

  @override
  State<example> createState() => _exampleState();
}

class _exampleState extends State<example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: logout(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text('Name: Nagham Latefa',
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Email: nagham@gmail.com',
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Experiances : Doctor ',
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Address : Jaramana',
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Number : 0988765432' ,
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Avaliable Days : Sunday',
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Consoltaion Type : Medical consultations',
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RatingBar.builder(
                  minRating: 1,
                  itemBuilder: (context, _)=> Icon(Icons.star,color:Colors.purple),
                  onRatingUpdate: (rating){},
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  cursorColor: Colors.purple,
                  decoration:InputDecoration(
                    prefixIcon: Icon(Icons.timer_outlined,color: Colors.purple,),
                    labelText: '64'.tr,
                    labelStyle: new TextStyle(
                        color: Colors.purple
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  ) ,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  cursorColor: Colors.purple,
                  decoration:InputDecoration(
                    prefixIcon: Icon(Icons.monetization_on,color: Colors.purple,),
                    labelText: '65'.tr,
                    labelStyle: new TextStyle(
                        color: Colors.purple
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  ) ,
                ),


              ]
          ),
        ),
      ),
    );
  }
}
