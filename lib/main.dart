import 'package:flutter/material.dart';
import 'routes.dart';
import 'constants/colors.dart';
import 'utils/theme_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, theme, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Profile Navigator',
          theme: theme.getTheme(),
          initialRoute: '/',
          routes: routes,
        ),
      ),
    );
  }
}
