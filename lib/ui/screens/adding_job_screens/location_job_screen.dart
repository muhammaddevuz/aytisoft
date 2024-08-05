import 'package:aytijobs/ui/screens/profile_screen/profile_widgets/all_in_one.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LocationJobScreen extends StatefulWidget {
  const LocationJobScreen({super.key});

  @override
  State<LocationJobScreen> createState() => _LocationJobScreenState();
}

class _LocationJobScreenState extends State<LocationJobScreen> {
  final locationcontroller = TextEditingController();
  List<String> jobLocations = [
    'New York, NY',
    'San Francisco, CA',
    'Austin, TX',
    'Seattle, WA',
    'Chicago, IL',
    'Boston, MA',
    'Los Angeles, CA',
    'Denver, CO',
    'Atlanta, GA',
    'Miami, FL',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            AllInOne(
              controller: locationcontroller,
              title: 'Location',
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
                itemCount: jobLocations.length,
                itemBuilder: (context, index) {
                  return Text(
                    jobLocations[index],
                    style: TextStyle(fontSize: 16),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
