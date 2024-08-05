import 'package:flutter/material.dart';

sealed class SkillsState {}

class SkillsInitialState extends SkillsState {}

class SkillsLoadingState extends SkillsInitialState {}

class SkillsLoadedState extends SkillsInitialState {
  final String query;
  final List skills;
  final TextEditingController controller;

  SkillsLoadedState(
      {required this.query, required this.skills, required this.controller});
}

class SkillsErrorState extends SkillsInitialState {
  final String error;
  SkillsErrorState({required this.error});
}
