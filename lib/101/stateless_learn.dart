import 'package:flutter/material.dart';

class StatelessLearnView extends StatelessWidget {
  //StatelessWidget alınanı göstermek için kullanılır
  const StatelessLearnView({super.key});
  final String _text = 'veli';

  @override
  Widget build(BuildContext context) {
    //build metot widge için dönen ana yeri verir
    return Scaffold(
      body: Column(
        children: [
          TitleTextWidget(text: _text),
          TitleTextWidget(text: _text),
          _emptyBox(),
          TitleTextWidget(text: _text),
          TitleTextWidget(text: _text),
          const _CustomContainer(),
          _emptyBox()
        ],
      ),
      appBar: AppBar(),
    );
  }

  SizedBox _emptyBox() {
    return const SizedBox(
      height: 40,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  // _Class olursa sadece bu sayfaya özel class olur
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.red,
    ));
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}
