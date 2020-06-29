import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Creator extends StatefulWidget {
  final String title;

  Creator({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  _CreatorState createState() => _CreatorState();
}

class _CreatorState extends State<Creator> {
  List<Widget> _textAnimationKit = [
    TyperAnimatedTextKit(
        onTap: () {
          print("Tap Event");
        },
        textAlign: TextAlign.start,
        alignment: AlignmentDirectional.topStart,
        text: [
          "I'm Working hard to Create Wonderful Apps,",
          "Say me Thanks by visiting and liking my,",
          "Github and Youtube profiles",
          "- Bilal JH (FlutterDeveloper)",
        ],
        textStyle: TextStyle(fontSize: 20.0, fontFamily: "Bobbers"),

        pause: Duration(seconds: 3),
        // speed: Duration(milliseconds:  1000),
      ),
    Center(
      child: TextLiquidFill(
        text: 'LIQUIDY',
        waveColor: Colors.blueAccent,
        boxBackgroundColor: Colors.redAccent,
        textStyle: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
        boxHeight: 300,
      ),
    ),
    SizedBox(
      width: 250.0,
      child: TypewriterAnimatedTextKit(
        onTap: () {
          print("Tap Event");
        },
        text: [
          "Discipline is the best tool",
          "Design first, then code",
          "Do not patch bugs out, rewrite them",
          "Do not test bugs out, design them out",
        ],
        textStyle: TextStyle(fontSize: 30.0, fontFamily: "Agne"),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      _visible = !_visible;
    });
  }

  bool _visible = false;
  int _index = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              new Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'Images/Dont.png',
                      width: 170.0,
                      height: 100.0,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      "APP",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    RaisedButton(

                      color: Colors.red,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.touch_app),
                          Text("Click me",style: TextStyle(fontSize: 24),)
                        ],
                      ),
                      onPressed: () {
                        // Call setState. This tells Flutter to rebuild the
                        // UI with the changes.
                        setState(() {
                          _visible = !_visible;
                        });
                      },
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),


                  ]),
                  SizedBox(height: 30),
                  AnimatedOpacity(
                    opacity: _visible ? 0.0 : 1.0,
                    duration: Duration(milliseconds: 1000),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                // The green box must be a child of the AnimatedOpacity widget.

                                InkWell(
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        image: DecorationImage(
                                          image: new ExactAssetImage(
                                              'Images/biluPic.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(75.0)),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 7.2,
                                              color: Colors.black,
                                              spreadRadius: 0.2)
                                        ]),
                                  ),
                                  onTap: () =>
                                      launch('https://github.com/bilalsaeedjh'),
                                ),

                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "Bilal Saeed",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepOrange),
                                    ),
                                    // Text("FA18-MCS-008",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.deepOrange),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: _textAnimationKit[0],
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  /*    InkWell(
                  child: Icon(
                    Icons.play_circle_filled,
                    size: 70.0,
                  ),
                  onTap: () {
                    setState(() {
                      _index = (_index + 1) % _textAnimationKit.length;
                    });
                  },
                ),*/
                  /*SizedBox(height:75),
                  Image.asset(
                    'assets/COMSATS.svg',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                  Container(
                      child: Column(
                        children: <Widget>[
                          Text("COMSATS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),),
                          Text("Institute of Information Technology",style: TextStyle(fontWeight: FontWeight.normal,fontStyle: FontStyle.italic,fontSize: 20,color: Colors.black),),
                          Text("(Vehari Campus)",style: TextStyle(fontWeight: FontWeight.normal,fontStyle:FontStyle.normal,fontSize: 20,color: Colors.black45),)


                        ],
                      )

                  )*/
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.github,color: Colors.white,),
            title: Text('Github',style:TextStyle(color: Colors.white,fontSize: 15)),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.youtube,color: Colors.white,),
            title: Text('Youtube',style:TextStyle(color: Colors.white,fontSize: 15)),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        backgroundColor: Colors.redAccent,
      ),
    );
  }
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      if(index==0){
        launch('https://github.com/bilalsaeedjh');
        _selectedIndex = index;
      }
      if(index==1){
        launch('https://www.youtube.com/channel/UCZSgQGG74K2yuEDnbG4U1tQ?view_as=subscriber');
        _selectedIndex = index;
      }

    });

  }
}




//NavigationBar work ends here


//Animation for the Text
List<Widget> _textAnimationKit=[
  TyperAnimatedTextKit(
    onTap: () {
      print("Tap Event");
    },
    text: [
      "See our other Flutter Examples on:",
      "Github,",
      "Youtube",
      "- SkillzUPP Technologies",
    ],
    textStyle: TextStyle(fontSize: 20.0, fontFamily: "Bobbers",color:Colors.black),


    pause: Duration(seconds:  3),
    // speed: Duration(milliseconds:  1000),
  ),Align(
    alignment: Alignment.bottomRight,
    child: TextLiquidFill(
      text: 'SkillzUPP Technologies',
      waveColor: Colors.blue,
      waveDuration: Duration(milliseconds:700),
      loadDuration: Duration(seconds:20),
      boxBackgroundColor: Colors.white,
      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      boxHeight: 30,
    ),
  ), SizedBox(
    width: 250.0,
    child: TypewriterAnimatedTextKit(
      onTap: () {
        print("Tap Event");
      },
      text: [
        "Discipline is the best tool",
        "Design first, then code",
        "Do not patch bugs out, rewrite them",
        "Do not test bugs out, design them out",
      ],
      textStyle: TextStyle(fontSize: 30.0, fontFamily: "Agne"),
    ),
  ),];

