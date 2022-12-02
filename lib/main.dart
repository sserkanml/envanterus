import 'package:envanterus/core/route/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouteGenerator().getRouter(),
      title: 'Envanterus',
      debugShowCheckedModeBanner: false,
    );
  }
}
