class Language {
  String name = 'English (US)';
  String code = 'en';

  Language({required this.name, required this.code});

  Language.fromJson(json) {
    name = json['name'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['code'] = code;
    return map;
  }
}

final List<Language> allLanguages = [
  Language(name: 'English', code: 'en'),
  Language(name: 'বাংলা', code: 'bn'),
];
