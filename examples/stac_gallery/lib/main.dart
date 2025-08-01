import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stac/stac.dart' show Stac;
import 'package:stac_gallery/app/example/example_screen_parser.dart';
import 'package:stac_models/stac_models.dart';
import 'package:stac_models/theme/stac_button_style/stac_button_style.dart';
import 'package:stac_models/types/stac_continuous_rectangle_border/stac_continuous_rectangle_border.dart';
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
    body: StacColumn(
      children: [
        StacContainer(
          width: double.infinity,
          color: StacColors.blue,
          child: StacText(data: 'Hello, World!'),
        ),
        StacContainer(
          width: double.infinity,
          color: StacColors.red,
          child: StacText(data: 'Hello, World!'),
        ),
        StacElevatedButton(
          onPressed: {},
          child: StacText(data: 'Hello, World!'),
          style: StacButtonStyle(
            shape: StacContinuousRectangleBorder(
              borderRadius: StacBorderRadius.all(100),
              side: StacBorderSide(
                width: 10,
                color: StacColors.black,
              ),
            ),
          ),
        ),
        StacOutlinedButton(
          onPressed: {},
          child: StacText(data: 'Hello, World!'),
        ),
      ],
    ),
    floatingActionButton: StacFloatingActionButton(
      onPressed: {},
      child: StacText(data: '+'),
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
