import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Color> colors = [
    Colors.amberAccent,
    Colors.blue,
    Colors.black,
    Colors.brown,
    Colors.blueAccent,
    Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {
    final title = 'Nyobain ListView';

    return MaterialApp(
      title: title,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 200,
                          color: Colors.grey,
                        ),
                        Container(
                          width: 200,
                          color: Colors.blueGrey,
                        ),
                        Container(
                          width: 200,
                          color: Colors.green,
                        ),
                        Container(
                          width: 200,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 400,
                            height: 150,
                            color: colors[index],
                          );
                        }),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 400,
                            height: 150,
                            color: colors[index],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
