import 'package:beamer/beamer.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tabata_new_gen/modules/core/headers.dart';
import 'package:tabata_new_gen/modules/tabatas/screen/tabata_screen.dart';
import 'package:tabata_new_gen/modules/tabatas/screen/tabatas_screen.dart';

class TabatasModule extends TBTModule {
  @override
  List<TBTRouteConfig> allRoutesConfig() {
    return [
      TabatasScreen.routeConfig,
      TabataScreen.routeConfig,
    ];
  }

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) =>
      allRoutesConfig().map((routeConfig) => routeConfig.beamPage(state)).toList();

  @override
  List<Pattern> get pathPatterns => allRoutesConfig().map((routeConfig) => routeConfig.pattern).toList();
}
