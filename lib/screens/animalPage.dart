import 'package:flutter/material.dart';
import 'package:nerdtectr/screens/animalItems.dart';
import 'package:nerdtectr/screens/transportationPage.dart';

class AnimalPage extends StatelessWidget {
  final String name;

  AnimalPage({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("NerDtector"),
        ),
        body: new Stack(children: [
          new Container(
            child: new LayoutBuilder(
              builder: (context, constraint) {
                return new GridView.builder(
                  itemCount: animal.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        constraint.maxWidth / constraint.maxHeight,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            ctxt,
                            new MaterialPageRoute(
                                builder: (ctxt) =>
                                    new TransportationPage(name: name)),
                          );
                        },
                        child: Card(
                          child: Stack(
                            //alignment: FractionalOffset.bottomCenter,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: animal[index].itemImage),
                                ),
                              )
                            ],
                          ),
                        ));
                  },
                );
              },
            ),
          ),
          new Container(
            child: new Text(
              'Please select your favorite animal, ' + this.name,
              style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
            ),
            alignment: Alignment(0, 0),
          ),
        ]));
  }
}
