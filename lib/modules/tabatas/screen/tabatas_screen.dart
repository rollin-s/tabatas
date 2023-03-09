import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tabata_new_gen/modules/core/headers.dart';

class TabatasScreen extends TBTScreen {
  static TBTRoute routeConfig = TBTRoute(
    pattern: '/',
    builder: (context, state, data) => TabatasScreen(),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tabatas list",
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: const Center(
        child: Text(
          "Texte de démo",
        ),
      ),
    );
  }
}
