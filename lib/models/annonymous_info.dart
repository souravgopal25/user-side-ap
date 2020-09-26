import 'dart:convert';

class AnnonyDetailModel {
  String state;
  String city;
  String district;
  String policeStation;
  String titleCase;
  String description;
  String suspect;
  AnnonyDetailModel({
    this.state,
    this.city,
    this.district,
    this.policeStation,
    this.titleCase,
    this.description,
    this.suspect,
  });

  AnnonyDetailModel copyWith({
    String state,
    String city,
    String district,
    String policeStation,
    String titleCase,
    String description,
    String suspect,
  }) {
    return AnnonyDetailModel(
      state: state ?? this.state,
      city: city ?? this.city,
      district: district ?? this.district,
      policeStation: policeStation ?? this.policeStation,
      titleCase: titleCase ?? this.titleCase,
      description: description ?? this.description,
      suspect: suspect ?? this.suspect,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'state': state,
      'city': city,
      'district': district,
      'policeStation': policeStation,
      'titleCase': titleCase,
      'description': description,
      'suspect': suspect,
    };
  }

  factory AnnonyDetailModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AnnonyDetailModel(
      state: map['state'],
      city: map['city'],
      district: map['district'],
      policeStation: map['policeStation'],
      titleCase: map['titleCase'],
      description: map['description'],
      suspect: map['suspect'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AnnonyDetailModel.fromJson(String source) =>
      AnnonyDetailModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AnnonyDetailModel(state: $state, city: $city, district: $district, policeStation: $policeStation, titleCase: $titleCase, description: $description, suspect: $suspect)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AnnonyDetailModel &&
        o.state == state &&
        o.city == city &&
        o.district == district &&
        o.policeStation == policeStation &&
        o.titleCase == titleCase &&
        o.description == description &&
        o.suspect == suspect;
  }

  @override
  int get hashCode {
    return state.hashCode ^
        city.hashCode ^
        district.hashCode ^
        policeStation.hashCode ^
        titleCase.hashCode ^
        description.hashCode ^
        suspect.hashCode;
  }
}
