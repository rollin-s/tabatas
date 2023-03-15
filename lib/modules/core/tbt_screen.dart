import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TBTRouteConfig {
  final Pattern pattern;
  final String name;
  final Widget Function(BeamState) builder;

  BeamPage beamPage(BeamState state) {
    return BeamPage(
      key: ValueKey(name),
      child: builder(state),
    );
  }

  TBTRouteConfig({
    required this.pattern,
    required this.builder,
    required this.name,
  });
}

abstract class TBTScreen extends ConsumerWidget {
  const TBTScreen({super.key});
}
