sealed class SkillsEvent {}

class SkillsChangeQueryEvent extends SkillsEvent {
  final String query;
  SkillsChangeQueryEvent({required this.query});
}

class ClearQueryEvent extends SkillsEvent {}

class SkillsAddEvent extends SkillsEvent {
  final String skill;
  SkillsAddEvent({required this.skill});
}

class SkillsRemoveEvent extends SkillsEvent {
  final String skill;
  SkillsRemoveEvent({required this.skill});
}

// class SkillsEvent {}
