import 'package:aytijobs/data/models/education.dart';

class EducationFormState {
  final String levelOfEducation;
  final String institutionName;
  final String fieldOfStudy;
  final String startDate;
  final String endDate;
  final String description;
  final Education? educationResult;

  EducationFormState({
    required this.levelOfEducation,
    required this.institutionName,
    required this.fieldOfStudy,
    required this.startDate,
    required this.endDate,
    required this.description,
    this.educationResult,
  });

  EducationFormState copyWith({
    String? levelOfEducation,
    String? institutionName,
    String? fieldOfStudy,
    String? startDate,
    String? endDate,
    String? description,
    Education? educationResult,
  }) {
    return EducationFormState(
      levelOfEducation: levelOfEducation ?? this.levelOfEducation,
      institutionName: institutionName ?? this.institutionName,
      fieldOfStudy: fieldOfStudy ?? this.fieldOfStudy,
      educationResult: educationResult ?? this.educationResult,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      description: description ?? this.description,
    );
  }
}
