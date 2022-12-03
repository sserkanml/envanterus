import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:envanterus/core/route/route_generator.dart';
import 'package:envanterus/core/theme/dark_theme.dart';
import 'package:envanterus/core/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();

  runApp(MyApp(
    themeMode: savedThemeMode,
  ));
}

class MyApp extends StatelessWidget {
   MyApp({Key? key, required this.themeMode}) : super(key: key);
  final AdaptiveThemeMode? themeMode;


  final _router=RouteGenerator().getRouter();
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: LightTheme.instance.theme,
      dark: DarkTheme.instance.theme,
      initial: themeMode ?? AdaptiveThemeMode.light,
      builder: (light, dark) {
        return MaterialApp.router(
          builder: (context, child) {
            return ResponsiveWrapper.builder(
              child,
              maxWidth: 1200,
              minWidth: 340,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(480, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ],
            );
          },
          theme: light,
          darkTheme: dark,
          routerConfig: _router,
          title: 'Envanterus',
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
