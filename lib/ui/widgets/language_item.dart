import 'package:flutter/material.dart';
import '../../data/models/language.dart';

class LanguageListItem extends StatefulWidget {
  final Language language;
  final int index;
  final VoidCallback onDelete;

  const LanguageListItem({
    super.key,
    required this.language,
    required this.index,
    required this.onDelete,
  });

  @override
  State<StatefulWidget> createState() {
    return _LanguageListItemState();
  }
}

class _LanguageListItemState extends State<LanguageListItem> {
  void _removeLanguage() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          clipBehavior: Clip.hardEdge,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 50),
              Text(
                "Remove ${widget.language.language} ?",
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff150B3D),
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "Are you sure you want to delete this ${widget.language.language} language?",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: FilledButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15)),
                        child: const Text(
                          "Continue Filling",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        onPressed: () {
                          widget.onDelete();
                          Navigator.pop(context);
                        },
                        style: FilledButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Colors.grey,
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15)),
                        child: const Text(
                          "Undo Changes",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [BoxShadow(color: Colors.grey)]),
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Container(
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    width: 70,
                    "assets/flags/${widget.language.flagUrl}.png",
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  widget.language.firstLanguage
                      ? "${widget.language.language}(First language)"
                      : widget.language.language,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: _removeLanguage,
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                    size: 35,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Oral: Level ${widget.language.oral}",
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
