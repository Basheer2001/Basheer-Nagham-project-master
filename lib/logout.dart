import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logout.dart';
class logout extends StatefulWidget {
  const logout({Key? key}) : super(key: key);

  @override
  State<logout> createState() => _logoutState();
}

class _logoutState extends State<logout> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          SizedBox(
            height: 30.0,
          ),
          ListTile(
            leading: Icon( Icons.logout,color: Colors.purple,),
            title: Text('20'.tr),
            onTap: () => print('log out'),
          ),

        ],
      ),

    );
  }
}
