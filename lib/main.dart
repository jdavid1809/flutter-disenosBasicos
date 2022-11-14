import 'package:flutter/material.dart';
import 'package:disenos/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'scrollDesing',
      routes: {
        'basicDesing': (_) => BasicDesingScreen(),
        'scrollDesing': (_) => ScrollDesingScreen(),
        'homeScreen': (_) => HomeScreen()
      },
    );
  }
}

// class _TempHomeScreen extends StatelessWidget {
//   const _TempHomeScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text('Texto 1'),
//         Text('Texto 2'),
//       ],
//     );
//   }
// }
