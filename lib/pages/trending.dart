import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/utils/movie_information.dart';

import 'package:movie_app/widget/secondary_tabbar/trending_secondary_tabbar.dart';

class Trending extends StatefulWidget {
  const Trending({
    Key? key,
  }) : super(key: key);

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending>
    with SingleTickerProviderStateMixin {
  final List<String> genere = [
    'action',
    'comedy',
    'romance',
    'adventure',
    'sci-fi'
  ];
  late AnimationController _controller;
  String imageName = 'assets/images/black-panther.jpeg';
  String image = 'a list of random movies without any filter';
  Color actionColor = Colors.transparent;
  Color adventureColor = Colors.transparent;
  Color comedyColor = Colors.transparent;
  Color scifiColor = Colors.transparent;
  Color romanceColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Column imageAndDescription(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .4,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(imageName),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            height: MediaQuery.of(context).size.height * .1,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rating',
                      style: Theme.of(context).textTheme.headline4,
                    )
                  ]),
            ),
          ),
        )
      ],
    );
  }

  Padding containerMaker(int index, Color containerColor) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Container(
          width: 120.0,
          height: 100.0,
          decoration: ShapeDecoration(
              color: containerColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Colors.grey.shade400, width: 1))),
          child: Center(
            child: TextButton(
                style: ButtonStyle(
                    enableFeedback: false,
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: Text(
                  genere[index],
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                onPressed: () {
                  handleState(index);
                }),
          )),
    );
  }

  void handleState(int index) {
    switch (genere[index]) {
      case 'action':
        setState(() {
          image = 'a list of action movies';
          actionColor = Color.fromRGBO(253, 109, 142, 1);
          adventureColor = Colors.transparent;
          comedyColor = Colors.transparent;
          scifiColor = Colors.transparent;
          romanceColor = Colors.transparent;
          imageName = 'assets/images/star-is-born.jpeg';

          // containerColor =
          //     Color.fromRGBO(253, 109, 142, 1);
        });
        break;
      case 'comedy':
        setState(() {
          image = 'a list of comedy movies image';
          actionColor = Colors.transparent;
          adventureColor = Colors.transparent;
          comedyColor = Color.fromRGBO(253, 109, 142, 1);
          scifiColor = Colors.transparent;
          romanceColor = Colors.transparent;
        });
        break;
      case 'romance':
        setState(() {
          actionColor = Colors.transparent;
          adventureColor = Colors.transparent;
          comedyColor = Colors.transparent;
          scifiColor = Colors.transparent;
          romanceColor = Color.fromRGBO(253, 109, 142, 1);
          image = 'a list of romance movies image';
        });
        break;
      case 'adventure':
        setState(() {
          actionColor = Colors.transparent;
          adventureColor = Color.fromRGBO(253, 109, 142, 1);
          comedyColor = Colors.transparent;
          scifiColor = Colors.transparent;
          romanceColor = Colors.transparent;
          image = 'a list of adventure movies image';
          imageName = 'assets/images/film-poster-graphic.jpeg';
        });
        break;
      case 'sci-fi':
        setState(() {
          actionColor = Colors.transparent;
          adventureColor = Colors.transparent;
          comedyColor = Colors.transparent;
          scifiColor = Color.fromRGBO(253, 109, 142, 1);
          romanceColor = Colors.transparent;
          image = 'a list of sci fi  moves image';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    containerMaker(0, actionColor),
                    containerMaker(1, comedyColor),
                    containerMaker(2, romanceColor),
                    containerMaker(3, adventureColor),
                    containerMaker(4, scifiColor),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MovieInformation(
                size: size,
                image: 'assets/images/black-panther.jpeg',
              ),
              MovieInformation(
                size: size,
                image: 'assets/images/star-is-born.jpeg',
              ),
              MovieInformation(
                  size: size, image: 'assets/images/film-poster-graphic.jpeg')
            ],
          ),
        )
      ]),
    );
  }
}
