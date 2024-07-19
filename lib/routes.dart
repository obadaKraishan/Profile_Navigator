import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/analytics_screen.dart';
import 'screens/notifications_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/messages_screen.dart';
import 'screens/wallets_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => HomeScreen(),
  '/profile': (context) => ProfileScreen(),
  '/settings': (context) => SettingsScreen(),
  '/analytics': (context) => AnalyticsScreen(),
  '/notifications': (context) => NotificationsScreen(),
  '/projects': (context) => ProjectsScreen(),
  '/messages': (context) => MessagesScreen(),
  '/wallets': (context) => WalletsScreen(),
};
