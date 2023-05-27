import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class searsh extends StatefulWidget {
  const searsh({Key? key}) : super(key: key);

  @override
  State<searsh> createState() => _searshState();
}

class _searshState extends State<searsh> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Rating'),
      ),
      body: Center(

        child: RatingBar.builder(
          minRating: 1,
            itemBuilder: (context, _)=> Icon(Icons.star,color:Colors.purple),
      onRatingUpdate: (rating){},
        ),
      ),
    );
  }
}
