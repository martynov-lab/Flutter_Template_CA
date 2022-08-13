class CountryModel {
  final String? name;
  final String? nativeName;
  final String? code;
  final String? phone;
  final String? flag;

  const CountryModel({
    required this.name,
    required this.nativeName,
    required this.code,
    required this.phone,
    required this.flag,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        name: json['name'],
        code: json['code'],
        nativeName: json['native'],
        phone: json['phone'],
        flag: json['flag'],
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          nativeName == other.nativeName &&
          code == other.code &&
          phone == other.phone &&
          flag == other.flag;

  @override
  int get hashCode => name.hashCode ^ nativeName.hashCode ^ code.hashCode;
}
