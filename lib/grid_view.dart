import 'package:flutter/material.dart';

class grid_view extends StatelessWidget {
  const grid_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GRID'),
        backgroundColor: Colors.orange,
      ),

      ///start of gridview.delegate
      ///end of delegate

      /// This is start of gridview.count
      body: GridView.count(
          crossAxisCount: 1,
          // mainAxisSpacing: 1, // height
          // crossAxisSpacing: 1,// width
          // padding: EdgeInsets.all(3),
          childAspectRatio: 4,
          children: List.generate(10, (index) {
            return Center(
              child: Card(
                margin: EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),

                  // color : Colors.black,
                ),

                color: Colors.red,
                elevation: 4,
                child: Text(
                  'I am kias. My whole family is in here Item $index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              )
            );
          })),
      /// end

    );
  }
}
