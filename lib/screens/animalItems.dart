import 'package:flutter/material.dart';

class Animals {
  AssetImage itemImage;
  Animals.item({
    this.itemImage,
  });
}

List<Animals> animal = [
  Animals.item(
    itemImage: AssetImage('assets/animals/hyena.jpg'),
  ),
  Animals.item(
    itemImage: AssetImage('assets/animals/sloth.jpg'),
  ),
  Animals.item(
    itemImage: AssetImage('assets/animals/lizard.jpg'),
  ),
  Animals.item(
    itemImage: AssetImage('assets/animals/narwhal.jpg'),
  ),
];
