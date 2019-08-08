import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nerdtectr/screens/landingPage.dart';
import 'package:nerdtectr/screens/transportationItems.dart';

class TransportationPage extends StatelessWidget {
  final String name;

  // receive data from the FirstScreen as a parameter
  TransportationPage({Key key, @required this.name}) : super(key: key);

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
                HeaderWidget(this.name + ', ssssssssssffffffffsplease select the best mode of transportation'),
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
    return 
    GridView.builder(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: transportation.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new LandingPage()),
                );
              },
              child: Card(
                child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            image:
                                DecorationImage(image: transportation[index].itemImage),
                          ),
                        )
                      ],
                    ),
              ));
        });
  }
}
