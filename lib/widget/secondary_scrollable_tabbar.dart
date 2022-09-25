import 'package:flutter/material.dart';

class SecondaryScrollable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> genere = [
      'action',
      'comedy',
      'romance',
      'adventure',
      'sci-fi'
    ];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 40.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(5, (int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Container(
                    width: 100.0,
                    height: 50.0,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(
                                color: Colors.grey.shade400, width: 1))),
                    child: Center(
                        child: Text(
                      genere[index],
                      style: Theme.of(context).textTheme.headlineSmall,
                    )),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
