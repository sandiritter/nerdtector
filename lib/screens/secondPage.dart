import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nerdtectr/screens/dateItems.dart';
import 'package:nerdtectr/screens/animalPage.dart';

class SecondPage extends StatelessWidget {
  final String name;

  // receive data from the FirstScreen as a parameter
  SecondPage({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("NerDtector"),
        ),
        body: Container(
            child: CustomScrollView(slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                HeaderWidget(this.name + ', please select your favorite day.'),
              ],
            ),
          ),
          SliverGrid(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
              delegate: SliverChildListDelegate(
                [
                  BodyWidget(this.name),
                ],
              ))
        ])));
  }
}

class HeaderWidget extends StatelessWidget {
  final String text;

  HeaderWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 16.0)),
      color: Colors.indigo,
    );
  }
}

class BodyWidget extends StatelessWidget {
  final String name;
  BodyWidget(this.name);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          //childAspectRatio: constraint.maxWidth / constraint.maxHeight,
        ),
        itemCount: storeItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new AnimalPage(
                            name: name,
                          )),
                );
              },
              child: Card(
                child: Stack(
                  //alignment: FractionalOffset.bottomCenter,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      color: Colors.indigo,
                      child: Text(
                        storeItems[index].itemName,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ));
        });
  }
}
