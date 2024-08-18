import 'package:aytijobs/data/models/job.dart';
import 'package:aytijobs/ui/screens/search_screen/specializations_screen.dart';
import 'package:aytijobs/ui/widgets/job_widget/vacansy.dart';
import 'package:aytijobs/ui/widgets/other_widgets/textFieldForm.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final searchController = TextEditingController();
  final cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white, // Set the back button color to white
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/account_screen_icons/profile_background.png'),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      color: Colors.black
                          .withOpacity(0.3), // Adding a slight overlay
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Textfieldform(
                          controller: searchController,
                          preficon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: 'Design',
                        ),
                        const SizedBox(height: 20),
                        Textfieldform(
                          controller: cityController,
                          preficon: const Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          hintText: 'California, USA',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ZoomTapAnimation(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SpecializationsScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Constantcolors.mainColor,
                        ),
                        child: const Icon(
                          CupertinoIcons.settings,
                          color: Colors.white,
                        ),
                      ),
                   
                    ),
                    const SizedBox(width: 10),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      children: [
                        Chip(
                          label: const Text('Senior Designer'),
                          backgroundColor: Colors.grey[200],
                        ),
                        Chip(
                          label: const Text('Designer'),
                          backgroundColor: Colors.grey[200],
                        ),
                        Chip(
                          label: const Text('UI/UX Designer'),
                          backgroundColor: Colors.grey[200],
                        ),
                        // Add more chips as needed
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final job = Job(
                  position: 'Somsachi',
                  id: UniqueKey().toString(),
                  type_workspace: 'type_workspace',
                  location: 'Tashkent',
                  company: 'Google',
                  type_employment: 'type_employment',
                  descriprion:
                      'Tempor cillum occaecat sunt est occaecat et ea elit...',
                );
                return Vacansy(job: job);
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
