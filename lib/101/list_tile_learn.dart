import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({super.key});
  final imageUrl = 'https://picsum.photos/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: RandomImage(
                  height: 100,
                  imageUrl: imageUrl,
                ),
                dense: true,
                contentPadding: EdgeInsets.zero,
                onTap: () {},
                subtitle: const Text('How do you use your card.'),
                leading: Container(
                    height: 100,
                    width: 30,
                    alignment: Alignment.bottomCenter,
                    color: Colors.red,
                    child: const Icon(Icons.money)),
                trailing: Container(
                  width: 20,
                  color: Colors.red,
                  child: const SizedBox(
                      width: 20, child: Icon(Icons.chevron_right)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
