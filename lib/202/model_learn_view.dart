import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  PostModel8 user9 = PostModel8(body: 'a');
  @override
  void initState() {
    super.initState();

    final user1 = PostModel()
      ..userId = 1
      ..title = 'vb';
    user1.body = 'hello';

    final user2 = PostModel2(1, 1, 'pm2', 'pm2 body')..body = 'new body';

    final user3 = PostModel3(3, 3, 'a', 'b');

    final user4 = PostModel4(userId: 4, id: 4, title: 'd', body: 'f');

    final user5 = PostModel5(userId: 5, id: 5, title: 'e', body: 'g');
    user5.userId;

    final user6 = PostModel6(userId: 6, id: 6, title: 'title', body: 'body');

    final user7 = PostModel7(userId: 7, id: 7);

    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user9 = user9.copyWith(title: 'vb');
          user9.updateBody('body body new body');
        });
      }),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not has any data'),
      ),
    );
  }
}
