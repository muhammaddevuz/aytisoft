import 'package:aytijobs/data/models/language.dart';

abstract class LanguageState{
  const LanguageState();

  @override
  List<Object> get props => [];
}

class LanguageInitial extends LanguageState {}

class LanguageLoadSuccess extends LanguageState {
  final List<Language> languages;

  const LanguageLoadSuccess(this.languages);

  @override
  List<Object> get props => [languages];
}

class LanguageSaveSuccess extends LanguageState {}