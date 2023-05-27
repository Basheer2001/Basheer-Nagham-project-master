import 'package:flutter/material.dart';
import 'choose.dart';
import 'logout.dart';
class wallet extends StatefulWidget {
  const wallet({Key? key}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  var formkey= GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: logout(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        ),
    body: Padding(
    padding: const EdgeInsets.all(20.0),
    child: SingleChildScrollView (
    child: Form(
      key: formkey,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      SizedBox(
      height: 40,
      ),
      TextFormField(
        cursorColor: Colors.purple,
        validator: (value){
          if(value!.isEmpty){
            return 'Please You Must To Write To Continue  ';
          }
          return null;
        },
      keyboardType: TextInputType.phone,
      decoration:InputDecoration(
      prefixIcon: Icon(Icons.monetization_on,color: Colors.purple,),
      labelText: 'Balance ',
        labelStyle: new TextStyle(
            color: Colors.purple
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
        ),
      ) ,
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: double.infinity,
          color: Colors.purple,
          child: MaterialButton(
            onPressed: (){
                if (formkey.currentState!.validate()){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => choose(),
                    ),
                  );

                }
            },
            child: Text(
              'Done ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        ],
      ),
    ),
    ),
    ),
    );
  }
}
