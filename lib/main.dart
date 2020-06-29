import 'package:flutter/material.dart';
import 'package:not_to_do/directory/creator.dart';
import 'package:not_to_do/ui/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //TestWidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp(

  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NoToDo',
      home: new Home(),
    routes: <String, WidgetBuilder>{
      '/creator': (BuildContext context) => Creator(),
    }
    );
  }
}
