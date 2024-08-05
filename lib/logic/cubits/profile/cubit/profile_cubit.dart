import 'package:bloc/bloc.dart';
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileState.initial());

  void selectGender(GenderState gender) {
    emit(state.copyWith(gender: gender));
  }

  void updateDate(String date) {
    emit(state.copyWith(dateOfBirth: date));
  }
}

enum GenderState { none, male, female }

class ProfileState {
  final GenderState gender;
  final String dateOfBirth;

  ProfileState({required this.gender, required this.dateOfBirth});

  factory ProfileState.initial() {
    return ProfileState(gender: GenderState.none, dateOfBirth: '');
  }

  ProfileState copyWith({GenderState? gender, String? dateOfBirth}) {
    return ProfileState(
      gender: gender ?? this.gender,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
    );
  }
}
