import 'package:flutter/material.dart';

class TeacherCard extends StatelessWidget {
  final String text;
  final Color color;
  final String description;
  TeacherCard(this.text, this.description, this.color) : super();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 280,
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              width: 200,
              height: 280,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('assets/teacher1.jpg', fit: BoxFit.cover),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  Expanded(child: Container()),
                  Text(text,
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Divider(
                    height: 20,
                    thickness: 3,
                    color: Colors.white,
                    indent: 60,
                    endIndent: 60,
                  ),
                  Text(description,
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,
                          fontSize: 15))
                ],
              ),
            )
          ],
        ));
  }
}

class ClipPRect {}
