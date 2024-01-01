import 'package:flutter/material.dart';

class many_more extends StatelessWidget {
  many_more(
      {super.key}
  );

  final List<String> s = List.generate(100,(item) =>  'Place ${item+1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Places to go'),

      ),
      body: ListView(
        children:
          s.map((e) =>
          ListTile(
            title: Text(e)) ,
          ).toList())


        );


  }
}

