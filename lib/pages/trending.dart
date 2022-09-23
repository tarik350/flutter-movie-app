import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/material.dart';

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

  String image = 'a list of random movies without any filter';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 70.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(5, (int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: TextButton(
                        onPressed: () {
                          switch (genere[index]) {
                            case 'action':
                              setState(() {
                                image = 'a list of action movies';
                              });
                              break;
                            case 'comedy':
                              setState(() {
                                image = 'a list of comedy movies image';
                              });
                              break;
                            case 'romance':
                              setState(() {
                                image = 'a list of romance movies image';
                              });
                              break;
                            case 'adventure':
                              setState(() {
                                image = 'a list of adventure movies image';
                              });
                              break;
                            case 'sci-fi':
                              setState(() {
                                image = 'a list of sci fi  moves image';
                              });
                              break;
                          }
                        },
                        child: Container(
                          width: 100.0,
                          height: 100.0,
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
        ),
        Positioned(
            top: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                      child: Container(
                        alignment: Alignment.center,
                        //color: Colors.red,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side:
                                    BorderSide(color: Colors.black, width: 3))),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(image,
                              style: Theme.of(context).textTheme.headlineLarge),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .7,
                    height: MediaQuery.of(context).size.height * .1,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 2, color: Colors.black),
                              borderRadius: BorderRadius.circular(30))),
                      child: Text(
                        'movie rating',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
