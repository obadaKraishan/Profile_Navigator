import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/theme_notifier.dart';
import 'user_profile.dart';
import 'drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Display user profile information at the top of the drawer
          UserProfile(),

          // Navigation items in the drawer
          DrawerItem(icon: Icons.home, text: 'Dashboard', onTap: () {
            // Navigate to the Dashboard screen
            Navigator.pushNamed(context, '/');
          }),
          DrawerItem(icon: Icons.analytics, text: 'Analytics', onTap: () {
            // Navigate to the Analytics screen
            Navigator.pushNamed(context, '/analytics');
          }),
          DrawerItem(icon: Icons.notifications, text: 'Notifications', onTap: () {
            // Navigate to the Notifications screen
            Navigator.pushNamed(context, '/notifications');
          }),
          DrawerItem(icon: Icons.folder, text: 'Projects', onTap: () {
            // Navigate to the Projects screen
            Navigator.pushNamed(context, '/projects');
          }),
          DrawerItem(icon: Icons.message, text: 'Messages', onTap: () {
            // Navigate to the Messages screen
            Navigator.pushNamed(context, '/messages');
          }),
          DrawerItem(icon: Icons.account_balance_wallet, text: 'Wallets', onTap: () {
            // Navigate to the Wallets screen
            Navigator.pushNamed(context, '/wallets');
          }),

          // Spacer to push the remaining items to the bottom of the drawer
          Spacer(),

          // Toggle theme switch
          Consumer<ThemeNotifier>(
            builder: (context, theme, _) => ListTile(
              // Icon changes based on the current theme
              leading: Icon(theme.isDarkMode ? Icons.wb_sunny : Icons.nights_stay),
              title: Text('Toggle Theme'),
              trailing: Switch(
                // Toggle the theme between light and dark modes
                value: theme.isDarkMode,
                onChanged: (value) {
                  theme.toggleTheme();
                },
              ),
            ),
          ),

          // Logout item
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              // Handle logout functionality here
            },
          ),
        ],
      ),
    );
  }
}
