part of 'education_bloc.dart';

sealed class EducationState {}

final class InitialEducationState extends EducationState {}

final class LoadingEducationState extends EducationState {}

final class LoadedEducationState extends EducationState {
  Education education;

  LoadedEducationState(this.education);
}

final class ErrorEducationState extends EducationState {
  String message;

  ErrorEducationState(this.message);
}
