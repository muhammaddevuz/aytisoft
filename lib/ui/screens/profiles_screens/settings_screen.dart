import 'password_screen.dart';
import '../../widgets/change_bottom.dart';
import '../../widgets/profile_widgets/notif_widget.dart';
import '../../../utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

submit() {}
bool isNotify = false;
bool isDarkly = false;

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
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
                color: Constantcolors.mainColor,
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
                  color: Constantcolors.mainColor,
                  fontSize: 16,
                ),
              ),
              trailing: SettingsWidget(isNotify: isNotify),
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
                  color: Constantcolors.mainColor,
                  fontSize: 16,
                ),
              ),
              trailing: SettingsWidget(isNotify: isDarkly),
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
                    color: Constantcolors.mainColor,
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
                    color: Constantcolors.mainColor,
                    fontSize: 16,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_sharp),
              ),
            ),
            const SizedBox(
              height: 400,
            ),
            Center(
              child: ZoomTapAnimation(
                onTap: submit,
                child: Card(
                  color: Constantcolors.mainColor,
                  child: Container(
                    alignment: Alignment.center,
                    width: 270,
                    height: 50,
                    child: const Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
