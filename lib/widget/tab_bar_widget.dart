import 'package:flutter/material.dart';

class TopTabBarWidget extends StatefulWidget {
  const TopTabBarWidget({Key? key}) : super(key: key);

  @override
  State<TopTabBarWidget> createState() => _TopTabBarWidget();
}

class _TopTabBarWidget extends State<TopTabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Tab> tabs = <Tab>[
    const Tab(text: 'Trending'),
    const Tab(text: 'Loved'),
    const Tab(text: 'New'),
    const Tab(
      text: 'Action',
    ),
    const Tab(
      text: 'Romance',
    ),
    const Tab(
      text: 'Adventure',
    )
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
              case 'Romance':
                {
                  return Center(
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Container(
                        alignment: Alignment.center,
                        color: Color.fromRGBO(253, 109, 142, 1),
                        child: Text('Romance',
                            style: Theme.of(context).textTheme.headlineLarge),
                      ),
                    ),
                  );
                }
              case 'Action':
                {
                  return Center(
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Container(
                        alignment: Alignment.center,
                        color: Color.fromRGBO(253, 109, 142, 1),
                        child: Text('Action',
                            style: Theme.of(context).textTheme.headlineLarge),
                      ),
                    ),
                  );
                }
              case 'New':
                {
                  return Center(
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Container(
                        alignment: Alignment.center,
                        color: Color.fromRGBO(253, 109, 142, 1),
                        child: Text('New',
                            style: Theme.of(context).textTheme.headlineLarge),
                      ),
                    ),
                  );
                }
              case 'Loved':
                {
                  return Center(
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Container(
                        alignment: Alignment.center,
                        color: Color.fromRGBO(253, 109, 142, 1),
                        child: Text('Loved',
                            style: Theme.of(context).textTheme.headlineLarge),
                      ),
                    ),
                  );
                }
              case 'Trending':
                {
                  return Center(
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Container(
                        alignment: Alignment.center,
                        color: Color.fromRGBO(253, 109, 142, 1),
                        child: Text('Trending',
                            style: Theme.of(context).textTheme.headlineLarge),
                      ),
                    ),
                  );
                }
              case 'Adventure':
                {
                  return Center(
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Container(
                        alignment: Alignment.center,
                        color: Color.fromRGBO(253, 109, 142, 1),
                        child: Text('Adventure',
                            style: Theme.of(context).textTheme.headlineLarge),
                      ),
                    ),
                  );
                }
            }

            return Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Container(color: Color.fromRGBO(253, 109, 142, 1)),
              ),
            );
          }).toList(),
        ))
      ],
    );
  }
}
