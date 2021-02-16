import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sample'),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int blockIdx) {
            print("Building block $blockIdx");
            return new Column(
              children: [
                Padding(
                    child: Text("Block $blockIdx"),
                    padding: EdgeInsets.all(8.0)),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int childIdx) {
                    print("Building block $blockIdx child $childIdx");
                    return Padding(
                      child: Text("Child $childIdx"),
                      padding: EdgeInsets.only(
                          left: 20.0, right: 8.0, top: 8.0, bottom: 8.0),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
