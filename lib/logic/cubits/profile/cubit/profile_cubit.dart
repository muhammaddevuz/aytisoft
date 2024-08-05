import 'package:aytijobs/logic/cubits/profile/cubit/profile_state.dart';
import 'package:bloc/bloc.dart';

enum GenderEnum { male, female, none }

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileState.initial());

  void selectGender(GenderEnum gender) {
    emit(state.copyWith(gender: gender));
  }

  void updateDate(String date) {
    emit(state.copyWith(dateOfBirth: date));
  }
}
