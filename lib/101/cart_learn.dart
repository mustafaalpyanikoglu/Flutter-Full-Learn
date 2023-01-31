// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CartLearnView extends StatelessWidget {
  CartLearnView({super.key});
  final _ProjectMargin _projectMargin = _ProjectMargin();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Card(
            elevation: 100,
            child: SizedBox(height: 100, width: 100),
          ),
          Card(
              margin: _projectMargin.cardMargin,
              color: Theme.of(context).colorScheme.error,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const SizedBox(
                height: 100,
                width: 300,
                child: Center(
                  child: Text(
                    'Ali',
                  ),
                ),
              )),
          _CustomCard(
            child: _ProjectChild(),
          ),
        ],
      ),
    );
  }
}

class _ProjectMargin {
  final cardMargin = const EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  _CustomCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  final _ProjectMargin _projectMargin = _ProjectMargin();
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: _projectMargin.cardMargin,
      color: Theme.of(context).colorScheme.error,
      child: child,
    );
  }
}

class _ProjectChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      width: 300,
      child: Center(
        child: Text(
          'Ali',
        ),
      ),
    );
  }
}
