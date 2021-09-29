import 'package:flutter/material.dart';
import 'package:placesfinal/card_image.dart';
import 'package:placesfinal/gradient_back.dart';
import 'package:placesfinal/home_app_bar.dart';
import 'package:placesfinal/review.dart';
import 'package:placesfinal/review_list.dart';


import 'description_place.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final descriptionPlace = Container(
      margin: EdgeInsets.only(
        top: 300,
          left: 30,
          right: 30
      ),
      child: DescriptionPlace("Bolivia",4,"En el actual territorio boliviano, se desarrollaron a lo largo de la historia antiguas culturas precolombinas como Tiahuanaco, la Cultura Hidráulica de las Lomas y el Imperio incaico. Después, el Imperio español dominó el territorio hasta que el país se independizó en 1825, año a partir del cual adoptó el nombre de Bolivia. Al haber heredado las tradiciones del mestizaje colonial y las culturas precolombinas, es un país multiétnico y pluricultural, rico en la mezcla de tradiciones y folclore de habitantes mestizos, indígenas, blancos descendientes de criollos, afrobolivianos, y en menor proporción, de migrantes europeos y asiáticos."),
    );

    final reviewList = Container(
      margin: EdgeInsets.only(
          top: 20,
          left: 30,
          right: 30
      ),
      child: ReviewList(),
    );

    //listView
    final listView = ListView(
      children: <Widget>[
        descriptionPlace,
        reviewList
      ],
    );



    return Scaffold(
      body: Stack(
        children: <Widget>[
          listView,
          HomeAppBar("Popular")
        ],
      ),
    );
  }
}