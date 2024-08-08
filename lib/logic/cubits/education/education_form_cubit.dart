import 'package:aytijobs/data/models/education.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'education_form_state.dart';

class EducationFormCubit extends Cubit<EducationFormState> {
  EducationFormCubit()
      : super(
          EducationFormState(
              levelOfEducation: '',
              institutionName: '',
              fieldOfStudy: '',
              startDate: '',
              endDate: '',
              description: ''),
        );

  void updateLevelOfEducation(String value) {
    emit(state.copyWith(levelOfEducation: value));
  }

  void updateInstitutionName(String value) {
    emit(state.copyWith(institutionName: value));
  }

  void updateFieldOfStudy(String value) {
    emit(state.copyWith(fieldOfStudy: value));
  }

  void updateDateResult(String value) {
    emit(state.copyWith(startDate: value));
  }

  void updateEndResult(String value) {
    emit(state.copyWith(endDate: value));
  }

  void updateDesciptionResult(String value) {
    emit(state.copyWith(description: value));
  }

  void updateEducationResult(Education value) {
    emit(state.copyWith(educationResult: value));
  }
}
