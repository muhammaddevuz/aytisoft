import 'package:aytijobs/blocs/skills_bloc/skills_event.dart';
import 'package:aytijobs/blocs/skills_bloc/skills_state.dart';
import 'package:aytijobs/utils/skills_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SkillsBloc extends Bloc<SkillsEvent, SkillsState> {
  SkillsBloc() : super(SkillsInitialState()) {
    on<SkillsAddEvent>(_addSkill);
    on<SkillsChangeQueryEvent>(_changeQuery);
    on<SkillsRemoveEvent>(_removeSkill);
  }

  void _addSkill(SkillsAddEvent event, emit) {
    emit(SkillsLoadingState());
    try {
      if (!skills.contains(event.skill)) {
        skills.add(event.skill);
        controller.clear();
        emit(SkillsChangeQueryEvent(query: ''));
        SkillsLoadedState(query: query, skills: skills, controller: controller);
      }
    } catch (error) {
      emit(SkillsErrorState(error: error.toString()));
    }
  }

  void _changeQuery(SkillsChangeQueryEvent event, emit) {
    emit(SkillsLoadingState());
    try {
      query = event.query;
      if (event.query == '') {
        controller.clear();
      }
      emit(SkillsLoadedState(
          query: query, skills: skills, controller: controller));
    } catch (error) {
      emit(SkillsErrorState(error: error.toString()));
    }
  }

  void _removeSkill(SkillsRemoveEvent event, emit) {
    emit(SkillsLoadingState());
    try {
      skills.removeWhere((element) => element == event.skill);
      emit(SkillsLoadedState(
          query: query, skills: skills, controller: controller));
    } catch (error) {}
  }
}
