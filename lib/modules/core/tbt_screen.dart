import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TBTRoute {
  final Pattern pattern;
  final Widget Function(BuildContext, BeamState, Object?) builder;

  Map<Pattern, Function(BuildContext, BeamState, Object?)> get beamRoute {
    return {
      pattern: builder,
    };
  }

  TBTRoute({
    required this.pattern,
    required this.builder,
  });
}

abstract class TBTScreen extends ConsumerWidget {
  const TBTScreen({super.key});
}
