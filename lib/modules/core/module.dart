import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';
import 'package:tabata_new_gen/modules/tabatas/tabatas_module.dart';

abstract class TBTModule {
  Map<Pattern, dynamic Function(BuildContext, BeamState, Object?)> get allRoutes;
}

class TBTModules {
  List<TBTModule> modulesApp = [
    TabatasModule(),
  ];

  Map<Pattern, dynamic Function(BuildContext, BeamState, Object?)> getMapBeamRoutes() {
    Map<Pattern, dynamic Function(BuildContext, BeamState, Object?)> mapBeamRoutes = {};

    for (TBTModule module in modulesApp) {
      mapBeamRoutes.addAll(
        module.allRoutes,
      );
    }

    return mapBeamRoutes;
  }

  BeamerDelegate getBeamerDelegate() {
    return BeamerDelegate(
      locationBuilder: RoutesLocationBuilder(
        routes: getMapBeamRoutes(),
      ),
    );
  }
}
