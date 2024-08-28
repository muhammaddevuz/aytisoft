import 'package:aytijobs/ui/screens/messages_screen/nothing_message_screen.dart';
import 'package:aytijobs/ui/widgets/other_widgets/textFieldForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class DialogScreen extends StatelessWidget {
  DialogScreen({super.key});
  final messagecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.ellipsis_vertical),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(),
              title: Text(
                "Andry Robertson",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 10,
                  ),
                  Gap(10),
                  Text('Online'),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Text('sms');
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Textfieldform(
                    controller: messagecontroller,
                    filledColor: Colors.white,
                    preficon: const Icon(CupertinoIcons.paperclip),
                    hintText: 'Write your message',
                  ),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const NothingMessageScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF130160),
                    ),
                    child: Image.asset(
                      'assets/icons/send.png',
                      width: 22,
                      height: 22,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
