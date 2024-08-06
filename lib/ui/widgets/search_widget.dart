import 'package:aytijobs/ui/widgets/education_widgets/education_all_in_one.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final List<String> originalListDatas;

  SearchWidget(
      {super.key,
      required this.title,
      required this.controller,
      required this.originalListDatas});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  List<String> assistantOforiginalListDatas = [];

  @override
  void initState() {
    super.initState();
    assistantOforiginalListDatas = widget.originalListDatas;
  }

  void onChanged(String? response) {
    if (response == null) return;

    setState(() {
      assistantOforiginalListDatas = widget.originalListDatas
          .where(
              (field) => field.toLowerCase().contains(response.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            EducationAllInOne(
              controller: widget.controller,
              title: widget.title,
              filledColor: Colors.white,
              onChanged: onChanged,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: assistantOforiginalListDatas.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print(assistantOforiginalListDatas[index]);
                    },
                    child: ListTile(
                      title: Text(
                        assistantOforiginalListDatas[index],
                        style: TextStyle(color: Constantcolors.mainColor),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
