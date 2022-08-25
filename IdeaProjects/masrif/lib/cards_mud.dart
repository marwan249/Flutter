import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masrif/componnents.dart';

class CardModel{
  var color;
  var subTitle;
  var title;
  var icon;
  var Icon2;


  CardModel(this.title, this.subTitle, this.color,this.icon,this.Icon2);

}
List<CardModel>  cards = cardData.map(
    (item) => CardModel(
      item['Title'],
      item['subTitle'],
      item['CardBackground'],
      item['Icon'],
      item['Icon2'],
    ),
).toList();

var cardData =[
{
  'Title': 'National Authority \nfor Digital Signature',
  'subTitle': 'National Authority for Digital Certifications',
  'CardBackground': secondaryColor ,
  'Icon':Icon(Icons.circle_sharp,size: 100,color: primaryColor,),
  'Icon2':Icon(Icons.circle,size: 200,color: primaryColor,)
},
  {
    'Title': 'Public key Infristurcter',
    'subTitle': 'National Authority for Digital Certifications National Authority for Digital Certifications',
    'CardBackground': primaryColor ,
    'Icon':Icon(Icons.circle,size: 100,color: secondaryColor,),
    'Icon2':Icon(Icons.circle,size: 200,color: secondaryColor,)
  },
  {
    'Title': 'Services',
    'subTitle': 'National Authority \nfor Digital Signature',
    'CardBackground':  secondaryColor,
    'Icon':Icon(Icons.circle,size: 100,color: primaryColor,),
    'Icon2':Icon(Icons.circle,size: 200,color: primaryColor,)
  },

];