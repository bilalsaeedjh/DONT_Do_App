import 'package:flutter/material.dart';
import 'package:not_to_do/ui/notodo_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: new AppBar(
         title: Text("Don't"),
         backgroundColor: Colors.red,
         actions: <Widget>[
           IconButton(
             icon: Icon(Icons.person),
              onPressed: (){
                Navigator.of(context).pushReplacementNamed('/creator');
              },
           )
         ],
       ),
      body: new NotoDoScreen(),
    );
  }
}
