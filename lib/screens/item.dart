import 'package:education_app/widgets/card.dart';
import 'package:education_app/widgets/cardList.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String title;
  final Color color;

  const TabItem(this.title, this.color) : super();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: this.color,
      body: new Container(
        child: new Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 40),
                width: double.infinity,
                child: Card(
                  color: Color.fromRGBO(82, 82, 82, 0.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "Learn from the best",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 320,
                            child: Text(
                              "Sign up or log in to your All-Access account to get unlimited access to 120+ instructors",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.redAccent),
                              child: Text("GET ALL-ACCESS"),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              Text(
                "New Classes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              CardList(),
            ],
          ),
        ),
      ),
    );
  }
}
