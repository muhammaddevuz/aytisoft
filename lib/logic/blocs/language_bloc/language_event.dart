// ignore_for_file: override_on_non_overriding_member

import '../../../data/models/language.dart';

abstract class LanguageEvent {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

class LoadLanguages extends LanguageEvent {}

class SaveLanguages extends LanguageEvent {
  final List<Language> languages;

  const SaveLanguages(this.languages);

  @override
  List<Object> get props => [languages];
}
