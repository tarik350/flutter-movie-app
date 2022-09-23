import 'package:flutter/material.dart';

class BoxofficeSecondaryScrollable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> genere = ['USA', 'UK'];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 70.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(2, (int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextButton(
                    onPressed: () {
                      print(genere[index]);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * .37,
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
