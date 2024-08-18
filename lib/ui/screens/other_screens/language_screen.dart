import '../../../data/models/language.dart';
import '../../widgets/other_widgets/add_language.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  final List<Language> language;
  LanguageScreen({super.key, List<Language>? language})
      : language = language ?? [];

  @override
  State<LanguageScreen> createState() => _LanguageScreenState(language);
}

class _LanguageScreenState extends State<LanguageScreen> {
  List<Language> languages = [];
  _LanguageScreenState(this.languages);

  void _removeLanguage(int index) {
    setState(() {
      languages.removeAt(index);
    });
  }

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
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Language",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff150B3D),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddLanguage(
                                  firstLanguage:
                                      languages.isEmpty ? true : false,
                                ),
                              ),
                            );
                          },
                          child: const Row(
                            children: [
                              Text(
                                "Add",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff7551FF),
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.add_circle,
                                color: Color(0xff3F13E4),
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        for (var i = 0; i < languages.length; i++)
                          LanguageListItem(
                            language: languages[i],
                            index: i,
                            onDelete: () => _removeLanguage(i),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
              ),
              child: const Text(
                "Save",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
