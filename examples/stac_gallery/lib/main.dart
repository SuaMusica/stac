import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stac/stac.dart' show Stac;
import 'package:stac_gallery/app/example/example_screen_parser.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/painting/stac_color/stac_colors.dart';
import 'package:stac_models/types/stac_double.dart';
import 'package:stac_models/widgets/widgets.dart';
import 'package:stac_webview/stac_webview.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  await Stac.initialize(
    parsers: const [
      ExampleScreenParser(),
      StacWebViewParser(),
    ],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STAC Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Stac.fromStacWidget(widget: homeScreen(), context: context),
    );
  }
}

StacWidget homeScreen() {
  return StacScaffold(
    appBar: StacAppBar(
      title: StacText(
        data: 'STAC dede',
      ),
    ),
    body: StacCenter(
      child: StacContainer(
          color: StacColors.blue,
          width: StacDouble(100.0),
          height: StacDouble(100.0),
          child: StacCenter(
            child: StacText(
              data: 'Hello, World!',
            ),
          )),
    ),
  );
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('STAC Gallery'),
//       ),
//       body: Center(
//         child: Container(
//           color: Colors.blue,
//           width: 100,
//           height: 100,
//           alignment: Alignment.center,
//           child: Text('Hello, Stac!!'),
//         ),
//       ),
//     );
//   }
// }

// // class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => AppThemeCubit()..loadThemes(),
//       child: BlocBuilder<AppThemeCubit, AppThemeState>(
//         builder: (context, state) {
//           return StacApp(
//             theme: state.lightTheme,
//             darkTheme: state.darkTheme,
//             themeMode: state.themeMode,
//             homeBuilder: (context) => HomeScreen(),
//             title: 'Stac Gallery',
//             routes: {
//               '/homeScreen': (context) => const HomeScreen(),
//               '/detailsScreen': (context) => const DetailsScreen(),
//             },
//           );
//         },
//       ),
//     );
//   }
// }
