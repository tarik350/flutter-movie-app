import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MovieInformation extends StatefulWidget {
  Size size;
  String image;
  MovieInformation({Key? key, required this.size, required this.image})
      : super(key: key);

  @override
  State<MovieInformation> createState() => _MovieInformationState();
}

class _MovieInformationState extends State<MovieInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 80),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: widget.size.height * .4,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(widget.image)),
              ),
            ),
          ]),
        ),
        SizedBox(
          height: 35,
        ),

        //the cover image the title and reting all together
        Column(
          children: [
            Text(
              'Black Panter',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber.shade700,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '8.2',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
