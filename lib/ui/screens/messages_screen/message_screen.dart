import 'package:aytijobs/ui/screens/messages_screen/dialog_screen.dart';
import 'package:aytijobs/ui/widgets/other_widgets/textFieldForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});
  final searchvcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Messages',
        ),
        actions: [
          Image.asset(
            'assets/icons/write.png',
            width: 24,
            height: 24,
          ),
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
            Textfieldform(
              controller: searchvcontroller,
              filledColor: Colors.white,
              preficon: const Icon(Icons.search),
              hintText: 'Search message',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key:
                        UniqueKey(), 
                    direction:
                        DismissDirection.endToStart, 
                    background: Container(
                      alignment: Alignment.centerRight,
                      color: Colors.red.withOpacity(0.1), 
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Icon(
                        Icons.delete,
                        color: Colors.red, 
                      ),
                    ),
                    onDismissed: (direction) {
                      
                    },
                    child: ZoomTapAnimation(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DialogScreen();
                            },
                          ),
                        );
                      },
                      child: const ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(),
                        title: Text(
                          "Andry Robertson",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Oh brothers, how are you?, Elit do veniam ex labore voluptate irure cupidatat aliqua irure Lorem culpa ipsum velit.",
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: Text('5m ago'),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
