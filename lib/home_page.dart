import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/controller/inc_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Consumer<IncController>(
          builder: (context, value, child) {
            return Text(value.number.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<IncController>(context, listen: false).incNumber();
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
