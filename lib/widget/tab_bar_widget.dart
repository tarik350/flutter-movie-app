import 'package:flutter/material.dart';
import 'package:movie_app/pages/boxoffice.dart';
import 'package:movie_app/pages/in_theather.dart';
import 'package:movie_app/pages/premiers.dart';
import 'package:movie_app/pages/series.dart';
import 'package:movie_app/pages/trending.dart';

class TopTabBarWidget extends StatefulWidget {
  const TopTabBarWidget({Key? key}) : super(key: key);

  @override
  State<TopTabBarWidget> createState() => _TopTabBarWidget();
}

class _TopTabBarWidget extends State<TopTabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Tab> tabs = <Tab>[
    const Tab(text: 'In Theater'),
    const Tab(text: 'Box Office'),
    const Tab(text: 'Trending'),
    const Tab(
      text: 'Premiers',
    ),
    const Tab(
      text: 'Series',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          indicatorWeight: 20,

          // labelStyle: const TextStyle(fontWeight: FontWeight.bold),

          indicatorPadding: EdgeInsets.only(right: 20, top: 40),
          labelPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          isScrollable: true,
          controller: _tabController,
          tabs: tabs,
        ),
        Expanded(
            child: TabBarView(
          controller: _tabController,
          children: tabs.map((Tab tab) {
            switch (tab.text) {
              case 'In Theater':
                {
                  return InTheather();
                }
              case 'Box Office':
                {
                  return BoxOffice();
                }
              case 'Trending':
                {
                  return Trending();
                }
              case 'Premiers':
                {
                  return Premiers();
                }
              case 'Series':
                {
                  return Series();
                }
            }
            // i don't know why but if i deleted this next line there will be alots of error
            return const SizedBox();
          }).toList(),
        ))
      ],
    );
  }
}
