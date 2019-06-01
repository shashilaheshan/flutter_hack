import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return signUpState();
  }
}

class signUpState extends State<signUp> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
         moveToLastScreen();
        // Navigator.pop(context,true);
      },
      child: Scaffold(
        appBar: AppBar(
            title: Text('SignUp'),
           // backgroundColor: Colors.deepOrange,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                  moveToLastScreen();
              },
            )),
        body: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: TextField(
                      controller: name,
                      style: textStyle,
                      onChanged: (value) {
                        debugPrint('typed name');
                        // updateTitle();
                      },
                      decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: TextField(
                      controller: email,
                      style: textStyle,
                      onChanged: (value) {
                        debugPrint('typed Email');
                        // updateTitle();
                      },
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: TextField(
                      controller: password,
                      style: textStyle,
                      onChanged: (value) {
                        debugPrint('typed Email');
                        // updateTitle();
                      },
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: 15.0, bottom: 15.0, left: 30.0, right: 30.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            color: Colors.blueGrey,
                            textColor: Colors.white,
                            child: Text(
                              'Sign Up',
                              textScaleFactor: 1.5,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }

}
