import 'package:bloc/bloc.dart';

import 'language_event.dart';
import 'language_state.dart';
import 'package:aytijobs/data/models/language.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageInitial()) {
    on<LoadLanguages>(_onLoadLanguages);
    on<SaveLanguages>(_onSaveLanguages);
  }

  void _onLoadLanguages(LoadLanguages event, Emitter<LanguageState> emit) {
    List<Language> languages = []; // Tillarni yuklash
    emit(LanguageLoadSuccess(languages));
  }

  void _onSaveLanguages(SaveLanguages event, Emitter<LanguageState> emit) {
    // Bu yerda tillarni saqlash kodini qo'shing.
    // Masalan, server yoki lokal ma'lumotlar bazasiga saqlash
    emit(LanguageSaveSuccess());
  }
}