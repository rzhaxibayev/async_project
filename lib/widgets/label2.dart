import 'dart:async';

import 'package:flutter/material.dart';

class Label2 extends StatefulWidget {
  final Stream<String> stream;

  const Label2({
    required this.stream,
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LabelState();
}

class _LabelState extends State<Label2> {
  String value = '';
  StreamSubscription<String>? subscription;

  @override
  void initState() {
    subscription = widget.stream.listen((event) {
      setState(() {
        value = event;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text(value),
    );
  }
}
