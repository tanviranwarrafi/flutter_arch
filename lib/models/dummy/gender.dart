class Gender {
  String label;
  String value;

  Gender({required this.label, required this.value});

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['label'] = label;
    map['value'] = value;
    return map;
  }
}

final List<Gender> gender_types = [
  Gender(label: 'Male', value: 'male'),
  Gender(label: 'Female', value: 'female'),
  Gender(label: 'Rather not say', value: 'rather_not_say'),
];
