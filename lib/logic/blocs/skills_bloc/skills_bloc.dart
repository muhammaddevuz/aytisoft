import 'skills_event.dart';
import 'skills_state.dart';
import '../../../utils/skills_constants.dart';
import 'package:bloc/bloc.dart';

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
      }
      controller.clear();
      add(SkillsChangeQueryEvent(query: ""));
      emit(SkillsLoadedState(
          query: query, skills: skills, controller: controller));
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
    } catch (error) {
      rethrow;
    }
  }
}
