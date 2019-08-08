import 'package:flutter/material.dart';

class Transporation {
  AssetImage itemImage;
  Transporation.item({
    this.itemImage,
  });
}

List<Transporation> transportation = [
  Transporation.item(
    itemImage: AssetImage('assets/transportation/van.jpg'),
  ),
  Transporation.item(
    itemImage: AssetImage('assets/transportation/iceberg.jpg'),
  ),
  Transporation.item(
    itemImage: AssetImage('assets/transportation/beetle.jpg'),
  ),
];
