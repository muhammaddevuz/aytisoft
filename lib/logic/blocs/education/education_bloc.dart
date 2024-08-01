import 'package:aytijobs/data/models/education.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'education_events.dart';
part 'education_states.dart';

class EducationBloc extends Bloc<EducationEvents, EducationState> {
  EducationBloc() : super(InitialEducationState());
  
}
