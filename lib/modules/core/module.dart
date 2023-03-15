import 'package:beamer/beamer.dart';
import 'package:tabata_new_gen/modules/tabatas/tabatas_module.dart';

import 'headers.dart';

abstract class TBTModule extends BeamLocation<BeamState> {
  List<TBTRouteConfig> allRoutesConfig();
}

class TBTModules {
  List<TBTModule> modulesApp = [
    TabatasModule(),
  ];

  List<BeamLocation> getBeamLocations() => modulesApp;

  BeamerDelegate getBeamerDelegate() {
    return BeamerDelegate(
      locationBuilder: BeamerLocationBuilder(
        beamLocations: getBeamLocations(),
      ),
    );
  }
}
