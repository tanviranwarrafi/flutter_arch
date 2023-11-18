extension ParseNumbers on String {
  int get parseInt => int.parse(this);
  double get parseDouble => double.parse(this);
  String get toLower => toLowerCase();
  String get toUpper => toUpperCase();

  String get removeHtml => replaceAll(RegExp('<[^>]*>', multiLine: true), '');
  // String get translate => tr(this);
}
