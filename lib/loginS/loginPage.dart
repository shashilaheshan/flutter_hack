import 'package:flutter/material.dart';
import 'package:flutter_bot/loginS/signIn.dart';
import 'package:flutter_bot/loginS/signUp.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[clipper(), loginPage()],
      ),
    );
  }

  List<Color> orangeGradient = [
    Colors.blue,
    Colors.blueAccent,
    Colors.lightBlue,
  ];

  Widget clipper() {
    return ClipPath(
      clipper: TopClipper(),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: orangeGradient,
                begin: Alignment.topLeft,
                end: Alignment.topCenter)),
      ),
    );
  }

//login and signup button
  Widget loginPage() {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 200, child: Image.asset('images/logo4.png')),
          Container(
            height: 5.0,
          ),
          Container(
            // padding: EdgeInsets.only(left:20.0,right: 20.0),
            child: RaisedButton(
              padding: EdgeInsets.only(
                  left: 34.0, right: 32.0, top: 10.0, bottom: 10.0),
              color: Colors.blueGrey,
              textColor: Colors.white,
              child: Text(
                'Create New Account',
                textScaleFactor: 1.5,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return signUp();
                }));
              },
            ),
          ),
          Container(
            height: 5.0,
          ),
          Container(
            child: RaisedButton(
              padding: EdgeInsets.only(
                  left: 18.0, right: 18.0, top: 10.0, bottom: 10.0),
              color: Colors.blueGrey,
              textColor: Colors.white,
              child: Text(
                'Login into Your Account',
                textScaleFactor: 1.5,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//Clipper class
class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);

    //creating first curver near bottom left corner
    var firstControlPoint = new Offset(size.width / 7, size.height - 30);
    var firstEndPoint = new Offset(size.width / 6, size.height / 1.5);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    //creating second curver near center
    var secondControlPoint = Offset(size.width / 5, size.height / 4);
    var secondEndPoint = Offset(size.width / 1.5, size.height / 5);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    //creating third curver near top right corner
    var thirdControlPoint =
        Offset(size.width - (size.width / 9), size.height / 6);
    var thirdEndPoint = Offset(size.width, 0.0);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    ///move to top right corner
    path.lineTo(size.width, 0.0);

    ///finally close the path by reaching start point from top right corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
