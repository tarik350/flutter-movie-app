import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/material.dart';

import 'package:movie_app/widget/secondary_scrollable_tabbar.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
        SecondaryScrollable(),
        Positioned(
            top: 100,
            child: Column(
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
                          child: Text('this is where the image comes in',
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
                    child: Container(color: Colors.red),
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
