import '../../data/models/language.dart';
import '../widgets/add_language.dart';
import '../../utils/countrys.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  final Language? language;
  const LanguageScreen({super.key, this.language});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

List<Language> languages = [];

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.language != null) {
      languages.add(widget.language!);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    print(languages);
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
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Language",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff150B3D)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddLanguage(
                                  firstLanguage:
                                      languages.length == 0 ? true : false,
                                ),
                              ));
                        },
                        child: const Row(
                          children: [
                            Text(
                              "Add",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff7551FF)),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.add_circle,
                              color: Color(0xff3F13E4),
                              size: 30,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        for (var i = 0; i < languages.length; i++)
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [const BoxShadow(color: Colors.grey)]),
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  leading: Container(
                                    decoration:
                                        const BoxDecoration(shape: BoxShape.circle),
                                    clipBehavior: Clip.hardEdge,
                                    child: Image.asset(
                                      width: 70,
                                      "assets/flags/${languages[i].flagUrl}.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: Text(
                                    languages[i].firstLanguage
                                        ? "${languages[i].language}(First language)"
                                        : languages[i].language,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                          // Add this line
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              clipBehavior: Clip.hardEdge,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  const SizedBox(height: 50),
                                                  Text(
                                                    "Remove ${languages[i].language} ?",
                                                    style: const TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff150B3D),
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Text(
                                                    textAlign: TextAlign.center,
                                                    "Are you sure you want to delete this ${languages[i].language} language?",
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  const SizedBox(height: 30),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: FilledButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            style: FilledButton.styleFrom(
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                padding: const EdgeInsets
                                                                    .fromLTRB(
                                                                        20,
                                                                        15,
                                                                        20,
                                                                        15)),
                                                            child: const Text(
                                                              "Continue Filling",
                                                              style: TextStyle(
                                                                  fontSize: 25,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: FilledButton(
                                                            onPressed: () {
                                                              languages
                                                                  .removeAt(i);
                                                              Navigator.pop(
                                                                  context);
                                                              setState(() {});
                                                            },
                                                            style: FilledButton.styleFrom(
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                backgroundColor:
                                                                    Colors.grey,
                                                                padding: const EdgeInsets
                                                                    .fromLTRB(
                                                                        20,
                                                                        15,
                                                                        20,
                                                                        15)),
                                                            child: const Text(
                                                              "Undo Changes",
                                                              style: TextStyle(
                                                                  fontSize: 25,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                        size: 35,
                                      )),
                                ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Text(
                                    "Oral: Level ${languages[i].oral}",
                                    style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          )
                      ],
                    ),
                  )
                ],
              ),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.fromLTRB(100, 15, 100, 15)),
                child: const Text(
                  "Save",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
