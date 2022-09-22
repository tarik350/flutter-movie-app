import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/material.dart';

class InTheather extends StatefulWidget {
  const InTheather({Key? key}) : super(key: key);

  @override
  State<InTheather> createState() => _InTheatherState();
}

class _InTheatherState extends State<InTheather>
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
    return Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: Container(
          alignment: Alignment.center,
          color: Color.fromRGBO(253, 109, 142, 1),
          child: Text('In Theather',
              style: Theme.of(context).textTheme.headlineLarge),
        ),
      ),
    );
  }
}
