import '../../data/models/language.dart';
import '../screens/language_screen.dart';
import 'add_language2.dart';
import '../../utils/countrys.dart';
import 'package:flutter/material.dart';

class AddLanguage extends StatelessWidget {
  final bool firstLanguage;
  const AddLanguage({super.key, required this.firstLanguage});

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
            for (var i = 0; i < Countrys.countrys.length; i++)
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey),
                        ]),
                    child: ListTile(
                      onTap: () {
                        if (firstLanguage) {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return LanguageScreen(
                                language: Language(
                                    firstLanguage: firstLanguage,
                                    language:
                                        Countrys.countrys[i].keys.toList()[0],
                                    flagUrl:
                                        Countrys.countrys[i].values.toList()[0],
                                    oral: "10"),
                              );
                            },
                          ));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddLanguage2(
                                    language:
                                        Countrys.countrys[i].keys.toList()[0],
                                    imageUrl: Countrys.countrys[i].values
                                        .toList()[0]),
                              ));
                        }
                      },
                      leading: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          width: 70,
                          "assets/flags/${Countrys.countrys[i].values.toList()[0]}.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        Countrys.countrys[i].keys.toList()[0],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              )
          ],
        ),
      ),
    );
  }
}
