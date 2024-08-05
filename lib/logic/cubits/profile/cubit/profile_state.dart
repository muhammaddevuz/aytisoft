import 'profile_cubit.dart';
import 'package:equatable/equatable.dart';

class ProfileState extends Equatable {
  final GenderEnum gender;
  final String dateOfBirth;

  const ProfileState({required this.gender, required this.dateOfBirth});

  factory ProfileState.initial() {
    return const ProfileState(gender: GenderEnum.none, dateOfBirth: '');
  }
  ProfileState copyWith({GenderEnum? gender, String? dateOfBirth}) {
    return ProfileState(
      gender: gender ?? this.gender,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
    );
  }
  @override
  List<Object?> get props => [gender, dateOfBirth];
}
