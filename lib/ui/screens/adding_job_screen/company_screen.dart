import 'package:aytijobs/ui/widgets/all_in_one.dart';
import 'package:aytijobs/ui/widgets/companys.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({super.key});

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  final companycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            AllInOne(
              controller: companycontroller,
              title: 'Comapny',
              filledColor: Colors.white,
              preficon: Icon(Icons.search),
              sufficon: Icon(Icons.remove_circle_outline_sharp),
              labelText: 'Search',
            ),
            Gap(20),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Gap(20);
                },
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Companys(index: index);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
