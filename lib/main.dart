import 'package:flutter/material.dart';
import 'package:flutter_components_app/src/pages/alert_page.dart';
import 'package:flutter_components_app/src/routes/routes.dart';
//import 'package:flutter_components_app/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      //home: HomePage()

      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Route called: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
