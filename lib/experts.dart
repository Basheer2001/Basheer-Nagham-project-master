import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'test.dart';
import 'package:http/http.dart' as http;
class experts extends StatefulWidget {
  const experts({Key? key}) : super(key: key);

  @override
  State<experts> createState() => _expertsState();
}

class _expertsState extends State<experts> {

  @override
  Future<Album> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('http://192.168.43.169:8000/api/expertindex'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Album.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,

      ),
      body: SingleChildScrollView(
        child: Center(
          child:FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {

                return
                  Column(
                    children:[
                      Text(snapshot.data!.id.toString()),
                    /*  Text(snapshot.data!.name),
                      Text(snapshot.data!.email),
                      Text(snapshot.data!.image),
                      Text(snapshot.data!.experiences),
                      Text(snapshot.data!.address),
                      Text(snapshot.data!.number.toString()),*/
                    ],
                  );

              } else if ( snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ) ,
        ),
      ),
    );
  }
}
