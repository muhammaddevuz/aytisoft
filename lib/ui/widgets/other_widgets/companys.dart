import 'package:flutter/material.dart';

class Companys extends StatelessWidget {
  final int index;
  Companys({super.key, required this.index});
  final List<String> itCompanies = [
    'Google',
    'Microsoft',
    'Apple',
    'Amazon',
    'Facebook',
    'IBM',
    'Oracle',
    'Intel',
    'Cisco',
    'Adobe'
  ];

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.network(
            fit: BoxFit.cover,
            'https://pbs.twimg.com/profile_images/1797665112440045568/305XgPDq_400x400.png'),
      ),
      title: Text(itCompanies[index]),
      subtitle:  const Text("Company ~ Internet"),
    );
  }
}
