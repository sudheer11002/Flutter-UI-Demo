import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidemo/ui/home_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        //title: "",
        theme: ThemeData(primarySwatch: Colors.blue),
        // home: Dashboard(),
        home: const HomeScreen(),
      );
}
