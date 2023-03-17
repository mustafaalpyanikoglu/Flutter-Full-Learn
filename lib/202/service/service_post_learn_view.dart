import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServicePostLearnView extends StatefulWidget {
  const ServicePostLearnView({super.key});

  @override
  State<ServicePostLearnView> createState() => _ServicePostLearnViewState();
}

class _ServicePostLearnViewState extends State<ServicePostLearnView> {
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  String? name;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _dio = Dio(
        BaseOptions(baseUrl: _baseUrl, contentType: Headers.jsonContentType));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post('posts', data: postModel);

    if (response.statusCode == HttpStatus.ok ||
        response.statusCode == HttpStatus.created) {
      name = 'Basarili';
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink()
        ],
      ),
      body: Column(children: [
        TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: 'Title'),
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next),
        TextField(
            controller: _bodyController,
            decoration: const InputDecoration(labelText: 'Body'),
            textInputAction: TextInputAction.next),
        TextField(
            controller: _userIdController,
            keyboardType: TextInputType.phone,
            autofillHints: const [AutofillHints.creditCardNumber],
            decoration: const InputDecoration(labelText: 'UserId')),
        TextButton(
            onPressed: _isLoading
                ? null
                : () {
                    if (_titleController.text.isNotEmpty &&
                        _bodyController.text.isNotEmpty &&
                        _userIdController.text.isNotEmpty) {
                      final model = PostModel(
                          body: _bodyController.text,
                          title: _titleController.text,
                          userId: int.tryParse(_userIdController.text));
                      _addItemToService(model);
                    }
                  },
            child: const Text('Send'))
      ]),
    );
  }
}
