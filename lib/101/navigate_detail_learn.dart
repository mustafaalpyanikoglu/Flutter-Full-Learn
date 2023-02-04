import 'package:flutter/material.dart';

class NavigateDetailLearnView extends StatefulWidget {
  const NavigateDetailLearnView({super.key, this.isOkey = false});
  final bool isOkey;

  @override
  State<NavigateDetailLearnView> createState() =>
      _NavigateDetailLearnViewState();
}

class _NavigateDetailLearnViewState extends State<NavigateDetailLearnView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOkey);
            },
            icon: Icon(Icons.check,
                color: widget.isOkey ? Colors.red : Colors.green),
            label: widget.isOkey ? const Text('Red') : const Text('Onayla')),
      ),
    );
  }
}
