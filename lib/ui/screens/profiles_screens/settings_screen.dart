import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:aytijobs/utils/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'password_screen.dart';
import '../../widgets/other_widgets/change_bottom.dart';
import '../../widgets/other_widgets/notif_widget.dart';
import '../../../utils/constant_colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isNotify = false;

  @override
  void initState() {
    super.initState();
  }

  void _toggleNotification(bool value) {
    setState(() {
      isNotify = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = ThemeManager.getPrimaryColor(context);
    final textColor = ThemeManager.getTextColor(context);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: TextStyle(
                color: primaryColor,
                fontSize: 16,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                'assets/icons/notif.png',
                width: 24,
                height: 24,
              ),
              title: Text(
                "Notifications",
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                ),
              ),
              trailing: Switch(
                value: isNotify,
                onChanged: _toggleNotification,
                activeColor: Colors.green,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                'assets/icons/dark_mode.png',
                width: 24,
                height: 24,
              ),
              title: Text(
                "Dark mode",
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                ),
              ),
              trailing: Switch(
                value: AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark,
                onChanged: (value) {
                  final newMode =
                      value ? AdaptiveThemeMode.dark : AdaptiveThemeMode.light;
                  AdaptiveTheme.of(context).setThemeMode(newMode);
                },
                activeColor: Colors.green,
              ),
            ),
            ZoomTapAnimation(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PasswordScreen();
                    },
                  ),
                );
              },
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  'assets/icons/pass.png',
                  width: 24,
                  height: 24,
                ),
                title: Text(
                  "Passwords",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_sharp),
              ),
            ),
            ZoomTapAnimation(
              onTap: () {
                Bottoms.showBottomSheetLogout(context);
              },
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  'assets/icons/logout.png',
                  width: 24,
                  height: 24,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_sharp),
              ),
            ),
            const SizedBox(
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
