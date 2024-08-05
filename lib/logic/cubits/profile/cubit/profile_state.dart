import 'package:equatable/equatable.dart';

enum GenderState { none, male, female }

class ProfileState extends Equatable {
  final GenderState gender;
  final String dateOfBirth;

  const ProfileState({
    required this.gender,
    required this.dateOfBirth,
  });

  factory ProfileState.initial() {
    return ProfileState(
      gender: GenderState.none,
      dateOfBirth: '',
    );
  }

  ProfileState copyWith({GenderState? gender, String? dateOfBirth}) {
    return ProfileState(
      gender: gender ?? this.gender,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
    );
  }

  @override
  List<Object?> get props => [gender, dateOfBirth];
}
