import 'package:education_app/widgets/card.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardList extends StatelessWidget {
  List<TeacherCard> cardList = [];

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    print(widgets.length);
    for (int i = 0; i < 10; i++) {
      widgets.add(Container(
        padding: EdgeInsets.only(right: 20, top: 20),
        child: TeacherCard(
            "Robert Reffkin", "Teaches Buying and Selling Re...", Colors.white),
      ));
    }
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: widgets,
        ));
  }
}
