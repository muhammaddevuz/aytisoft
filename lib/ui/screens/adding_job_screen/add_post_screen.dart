// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:aytijobs/ui/widgets/all_in_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final titlecontorller = TextEditingController();
  final desccontorller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Post",
              style: TextStyle(
                color: Color(0xFFFF9228),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add Post',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.amber),
              ),
              title: const Text(
                'Orlando Diggs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              subtitle: const Text(
                'California, USA',
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AllInOne(
              controller: titlecontorller,
              title: 'Post title',
              filledColor: Colors.white,
              labelText: 'Write the title of your post here',
            ),
            SizedBox(
              height: 20,
            ),
            AllInOne(
              controller: desccontorller,
              title: 'Description',
              filledColor: Colors.white,
              labelText: 'What do you want to talk about?',
              maxLines: 5,
            ),
            SizedBox(
              height: 318,
            ),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/camera.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/gallery.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Add hashtag",
                      style: TextStyle(
                        color: Color(0xFFFF9228),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
