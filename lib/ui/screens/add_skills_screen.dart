import 'package:aytijobs/blocs/skills_bloc/skills_bloc.dart';
import 'package:aytijobs/blocs/skills_bloc/skills_event.dart';
import 'package:aytijobs/blocs/skills_bloc/skills_state.dart';
import 'package:aytijobs/utils/skills_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddSkillsScreen extends StatefulWidget {
  @override
  State<AddSkillsScreen> createState() => _AddSkillsScreenState();
}

class _AddSkillsScreenState extends State<AddSkillsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SkillsBloc>().add(SkillsChangeQueryEvent(query: ''));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: BlocBuilder<SkillsBloc, SkillsState>(builder: (context, state) {
        if (state is SkillsLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is SkillsErrorState) {
          return Center(
            child: Text(state.error),
          );
        }

        if (state is SkillsLoadedState) {
          return Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add Skill",
                  style: TextStyle(
                    fontSize: 16.h,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      height: 45.h,
                      width: 330.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: TextFormField(
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          controller: state.controller,
                          expands: true,
                          maxLines: null,
                          minLines: null,
                          decoration: InputDecoration(
                            hintText: "Search Skills",
                            border: InputBorder.none,
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            suffixIcon: state.query.isNotEmpty
                                ? IconButton(
                                    onPressed: () {
                                      setState(() {
                                        state.controller.clear();
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.close,
                                      color: Colors.black,
                                    ),
                                  )
                                : null,
                          ),
                          onChanged: (value) {
                            context
                                .read<SkillsBloc>()
                                .add(SkillsChangeQueryEvent(query: value));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: state.query.isEmpty ? 15 : 5,
                ),
                state.query.isNotEmpty
                    ? Container(
                        height: 400,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: skillsList.length,
                          itemBuilder: (context, index) {
                            if (skillsList[index]
                                .toLowerCase()
                                .contains(state.query.toLowerCase()) && !state.skills.contains(skillsList[index])) {
                              return InkWell(
                                onTap: () {
                                  context.read<SkillsBloc>().add(SkillsAddEvent(skill: skillsList[index]));
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  width: 350,
                                  child: Text(
                                    skillsList[index],
                                    style: TextStyle(
                                      fontSize: 12.h,
                                    ),
                                  ),
                                ),
                              );
                            }
                            return const SizedBox();
                          },
                        ),
                      )
                    : Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          for (var item in state.skills)
                            Container(
                              clipBehavior: Clip.hardEdge,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffF0EFF2)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: 12.h,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                    context.read<SkillsBloc>().add(SkillsRemoveEvent(skill: item));
                                    },
                                    icon: Icon(
                                      fill: 0,
                                      Icons.close,
                                      size: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
              ],
            ),
          );
        }
        return Center(
          child: Text('Malumotlar topilmadi'),
        );
      }),
    );
  }
}
