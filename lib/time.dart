import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logout.dart';
class time extends StatefulWidget {
  const time({Key? key}) : super(key: key);

  @override
  State<time> createState() => _timeState();
}

class _timeState extends State<time> {
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
                Text(' you have an appointement on Sunday',
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('You have an appointement on Monday',
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }

}
/* ListView.builder(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context ,index )
          {
            return
          },
        itemCount: 5,
      )*/
