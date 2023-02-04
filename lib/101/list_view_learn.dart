import 'package:flutter/material.dart';

class ListViewLearn extends StatelessWidget {
  const ListViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.displayLarge,
              maxLines: 1,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal, //yatayda yaptık
              children: [
                Container(color: Colors.green, width: 200),
                Container(color: Colors.white, width: 200),
                Container(color: Colors.green, width: 200),
                Container(color: Colors.white, width: 200),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.displayLarge,
              maxLines: 1,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal, //yatayda yaptık
              children: [
                Container(color: Colors.green, width: 200),
                Container(color: Colors.white, width: 200),
                Container(color: Colors.green, width: 200),
                Container(color: Colors.white, width: 200),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          const _Listdemo(),
        ],
      ),
    );
  }
}

class _Listdemo extends StatefulWidget {
  const _Listdemo();

  @override
  State<_Listdemo> createState() => __ListdemoState();
}

class __ListdemoState extends State<_Listdemo> {
  @override
  void initState() {
    super.initState();
    print('Hello');
  }

  @override
  void dispose() {
    super.dispose();
    print('exit');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
