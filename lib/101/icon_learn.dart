import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final String _title = 'Hello';
  final IconSizes iconSizes = IconSizes();
  final IconColors iconColors = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Theme.of(context).colorScheme.background,
                size: iconSizes.iconSmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.froly,
                size: IconSizes.iconSmall2x,
              )),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconSmall2x = 80;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
}
