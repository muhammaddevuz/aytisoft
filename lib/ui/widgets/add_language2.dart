import 'package:flutter/material.dart';

class AddLanguage2 extends StatefulWidget {
  final String language;
  final String imageUrl;
  const AddLanguage2(
      {super.key, required this.language, required this.imageUrl});

  @override
  State<AddLanguage2> createState() => _AddLanguage2State();
}

class _AddLanguage2State extends State<AddLanguage2> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 35,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Language",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff150B3D)),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey),
                      ]),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Language",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                clipBehavior: Clip.hardEdge,
                                child: Image.asset(
                                  width: 40,
                                  height: 40,
                                  "assets/flags/${widget.imageUrl}.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                widget.language,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () async {
                          await showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  "Select level",
                                  textAlign: TextAlign.center,
                                ),
                                actions: [
                                  Column(
                                    children: [
                                      for (var i = 0; i < 11; i++)
                                        InkWell(
                                          onTap: () {
                                            level = i;
                                            Navigator.pop(context);
                                            setState(() {});
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    "Level: $i",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(height: 20),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 200,
                                              )
                                            ],
                                          ),
                                        )
                                    ],
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Oral",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Level $level",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Proficiency level : 0 - Poor, 10 - Very good",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.fromLTRB(100, 15, 100, 15)),
                child: Text(
                  "Save",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
