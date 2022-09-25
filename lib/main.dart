import 'package:flutter/material.dart';
import 'package:movie_app/widget/tab_bar_widget.dart';
import 'package:movie_app/style.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Style.themeData,
        home: Scaffold(
            appBar: AppBar(
              leading: Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30,
                    ),
                  )),
              actions: [
                Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                    ))
              ],
            ),
            body: const TopTabBarWidget()));
  }
}
