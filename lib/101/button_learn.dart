import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextButton(
                onPressed: () {},
                child:
                    Text('Save', style: Theme.of(context).textTheme.subtitle1),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.blue;
                    }
                    return Colors.green;
                  }),
                )),
            ElevatedButton(onPressed: () {}, child: const Text('a')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
            FloatingActionButton(
                onPressed: () {
                  // servise istek at
                  // sayfanın rengini düzenle
                },
                child: const Icon(Icons.add)),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10)),
                child: const Icon(Icons.abc_sharp)),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.abc),
                label: const Text('data')),
            InkWell(
              onTap: () {},
              child: const Text('custom'),
              onDoubleTap: () {},
            ),
            Container(
              height: 50,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          ],
        ));
  }
}
