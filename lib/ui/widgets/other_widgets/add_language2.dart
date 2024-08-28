import 'package:aytijobs/data/models/language.dart';
import 'package:aytijobs/ui/screens/profile_screen/language_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddLanguage2 extends StatefulWidget {
  final String language;
  final String imageUrl;
  List<Language> languages;
  AddLanguage2(
      {super.key,
      required this.language,
      required this.imageUrl,
      required this.languages});

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
            icon: const Icon(
              Icons.arrow_back,
              size: 35,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Language",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff150B3D)),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.grey),
                      ]),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Language",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                clipBehavior: Clip.hardEdge,
                                child: Image.asset(
                                  width: 40,
                                  height: 40,
                                  "assets/flags/${widget.imageUrl}.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Text(
                                widget.language,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () async {
                          await showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
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
                                                    style: const TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 20),
                                                ],
                                              ),
                                              const SizedBox(
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
                                const Text(
                                  "Oral",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Level $level",
                                  style: const TextStyle(
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
                const SizedBox(height: 10),
                const Row(
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
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      widget.languages.add(
                        Language(
                            firstLanguage: false,
                            language: widget.language,
                            flagUrl: widget.imageUrl,
                            oral: level.toString()),
                      );
                      return LanguageScreen(language: widget.languages);
                    },
                  ));
                },
                style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.fromLTRB(100, 15, 100, 15)),
                child: const Text(
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
