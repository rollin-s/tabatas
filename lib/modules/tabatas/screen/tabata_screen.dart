import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:tabata_new_gen/modules/core/headers.dart';

class TabataScreen extends TBTScreen {
  static TBTRouteConfig routeConfig = TBTRouteConfig(
    name: "Tabata",
    pattern: "/tabatas/:tabataId",
    builder: (state) {
      String? tabataId = state.pathParameters["tabataId"];

      if (tabataId != null) {
        return TabataScreen(
          tabataId: tabataId,
        );
      }
      return const ErrorScreen();
    },
  );

  String tabataId;

  TabataScreen({
    required this.tabataId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail tabata",
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
      body: Center(
        child: Text(
          "Je suis le tabata numéro $tabataId",
        ),
      ),
    );
  }
}
