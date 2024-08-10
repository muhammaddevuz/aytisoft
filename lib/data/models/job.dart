// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class Job {
  String position;
  String id;
  String type_workspace;
  String location;
  String company;
  String type_employment;
  String descriprion;
  Job({
    required this.position,
    required this.id,
    required this.type_workspace,
    required this.location,
    required this.company,
    required this.type_employment,
    required this.descriprion,
  });
  

  Job copyWith({
    String? position,
    String? id,
    String? type_workspace,
    String? location,
    String? company,
    String? type_employment,
    String? descriprion,
  }) {
    return Job(
      position: position ?? this.position,
      id: id ?? this.id,
      type_workspace: type_workspace ?? this.type_workspace,
      location: location ?? this.location,
      company: company ?? this.company,
      type_employment: type_employment ?? this.type_employment,
      descriprion: descriprion ?? this.descriprion,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'position': position,
      'id': id,
      'type_workspace': type_workspace,
      'location': location,
      'company': company,
      'type_employment': type_employment,
      'descriprion': descriprion,
    };
  }

  factory Job.fromMap(Map<String, dynamic> map) {
    return Job(
      position: map['position'] as String,
      id: map['id'] as String,
      type_workspace: map['type_workspace'] as String,
      location: map['location'] as String,
      company: map['company'] as String,
      type_employment: map['type_employment'] as String,
      descriprion: map['descriprion'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Job.fromJson(String source) => Job.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Job(position: $position, id: $id, type_workspace: $type_workspace, location: $location, company: $company, type_employment: $type_employment, descriprion: $descriprion)';
  }

  @override
  bool operator ==(covariant Job other) {
    if (identical(this, other)) return true;
  
    return 
      other.position == position &&
      other.id == id &&
      other.type_workspace == type_workspace &&
      other.location == location &&
      other.company == company &&
      other.type_employment == type_employment &&
      other.descriprion == descriprion;
  }

  @override
  int get hashCode {
    return position.hashCode ^
      id.hashCode ^
      type_workspace.hashCode ^
      location.hashCode ^
      company.hashCode ^
      type_employment.hashCode ^
      descriprion.hashCode;
  }
}
