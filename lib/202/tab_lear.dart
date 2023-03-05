import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {
            if (_tabController.index == 3) {
              _tabController.animateTo(0);
            } else {
              _tabController.animateTo(++_tabController.index);
            }
          }),
          bottomNavigationBar: BottomAppBar(
            notchMargin: _notchedValue,
            child: _myTabView(tabController: _tabController),
          ),
          appBar: AppBar(
              // bottom: TabBar(controller: _tabController, tabs: const [
              //   Tab(text: 'Page1'),
              //   Tab(text: 'Page2'),
              // ]),
              ),
          body: _tabbarView(tabController: _tabController),
        ));
  }
}

class _myTabView extends StatelessWidget {
  const _myTabView({
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        padding: EdgeInsets.zero,
        onTap: (int index) {},
        controller: _tabController,
        tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList());
  }
}

class _tabbarView extends StatelessWidget {
  const _tabbarView({
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          const ImageLearnView(),
          IconLearnView(),
          const ImageLearnView(),
          IconLearnView(),
        ]);
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTavViewExtension on _MyTabViews {}
