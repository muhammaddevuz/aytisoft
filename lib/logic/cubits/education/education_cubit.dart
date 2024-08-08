import 'package:flutter_bloc/flutter_bloc.dart';

class EducationCubit extends Cubit<bool> {
  EducationCubit() : super(false);

  void toggleCheck() {
    emit(!super.state);
  }

  void setFalse() {
    emit(false);
  }
}
