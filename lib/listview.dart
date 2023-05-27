import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logout.dart';
class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
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
                TextFormField(
                  cursorColor: Colors.purple,
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.purple,),
                    labelText: '57'.tr,
                    labelStyle: new TextStyle(
                        color: Colors.purple
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('58'.tr,
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('59'.tr,
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('60'.tr,
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('61'.tr,
                  style:
                  TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('62'.tr ,
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
