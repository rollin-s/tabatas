import 'package:beamer/src/beam_state.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tabata_new_gen/modules/core/headers.dart';
import 'package:tabata_new_gen/modules/tabatas/screen/tabatas_screen.dart';

class TabatasModule extends TBTModule {
  @override
  Map<Pattern, Function(BuildContext context, BeamState beamState, Object? object)> allRoutes = {
    ...TabatasScreen.routeConfig.beamRoute,
  };
}
