import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  CustomWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFootButton(
                    title: 'Food',
                    onPressed: () {},
                  )),
            )),
            const SizedBox(height: 66),
            CustomFootButton(
              title: 'Food',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final normalPadding = const EdgeInsets.all(8.0);
  final normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFootButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFootButton({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: normal2xPadding,
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
