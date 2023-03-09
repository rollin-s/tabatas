import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tabata_new_gen/modules/core/module.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

/*  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        // Return either Widgets or BeamPages if more customization is needed
        '/': (context, state, data) => HomeScreen(),
        '/books': (context, state, data) => BooksScreen(),
        '/books/:bookId': (context, state, data) {
          // Take the path parameter of interest from BeamState
          final bookId = state.pathParameters['bookId']!;
          // Collect arbitrary data that persists throughout navigation
          final info = (data as MyObject).info;
          // Use BeamPage to define custom behavior
          return BeamPage(
            key: ValueKey('book-$bookId'),
            title: 'A Book #$bookId',
            popToNamed: '/',
            type: BeamPageType.scaleTransition,
            child: BookDetailsScreen(bookId, info),
          );
        }
      },
    ),
  );*/

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TBTModules modulesConfig = TBTModules();

    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: modulesConfig.getBeamerDelegate(),
      title: 'Tabatas',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
