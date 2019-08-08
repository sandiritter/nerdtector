import 'package:flutter/material.dart';
import 'package:nerdtectr/screens/secondPage.dart';
String name = "";

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("NerDtector"),
      ),
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.teal[50],
      body: new Container(
        color: Colors.black54,
        child: Container(
            child: new Container(
                child: new Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.purple, Colors.blue])),
          child: new Align(
              child: new Column(
            children: [
              new Padding(padding: EdgeInsets.only(top: 40.0)),
              new Text(
                'Welcome to NerDtector',
                style: new TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              new Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "You are about to embark on a fascinating journey of self-discovery!  With just a few simple questions, I will detect your level of nerdiness.",
                    style: new TextStyle(color: Colors.white, fontSize: 18.0),
                    textAlign: TextAlign.justify,
                  )),
              new Padding(padding: EdgeInsets.only(top: 40.0)),
              new Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Text(
                    'We can ease into this.  The first question is easy.',
                    style: new TextStyle(color: Colors.white, fontSize: 15.0),
                  )),
              new TextField(
                //autofocus: true,
                textInputAction: TextInputAction.done,
                textCapitalization: TextCapitalization.words,
                style: TextStyle(color: Colors.white, fontSize: 15.0),
                decoration: new InputDecoration(
                    labelText: "What would you like to be called?",
                    labelStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.all(15.0)),
                keyboardType: TextInputType.text,
                onChanged: (text) {
                    name = text;
                },
                onSubmitted:  (name) {
                Navigator.push(
                  ctxt,
                  new MaterialPageRoute(builder: (context) => new SecondPage(name: name)),
                );
                
              },
              ),
              
            ],
          )),
        ))),
      ),
    );
  }
}