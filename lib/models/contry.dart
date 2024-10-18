class Country {
  final String commonName;
  final String officialName;
  final List<String> capital;
  final String region;
  final String subregion;
  final int population;
  final String flagPng;
  final String flagSvg;

  Country({
    required this.commonName,
    required this.officialName,
    required this.capital,
    required this.region,
    required this.subregion,
    required this.population,
    required this.flagPng,
    required this.flagSvg,
  });

  // Factory constructor to create a Country from JSON
  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      commonName: json['name']['common'] ?? 'Unknown',
      officialName: json['name']['official'] ?? 'Unknown',
      capital: json['capital'] != null ? List<String>.from(json['capital']) : [],
      region: json['region'] ?? 'Unknown',
      subregion: json['subregion'] ?? 'Unknown',
      population: json['population'] ?? 0,
      flagPng: json['flags']['png'] ?? '',
      flagSvg: json['flags']['svg'] ?? '',
    );
  }

  // Method to convert the Country instance back to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': {
        'common': commonName,
        'official': officialName,
      },
      'capital': capital,
      'region': region,
      'subregion': subregion,
      'population': population,
      'flags': {
        'png': flagPng,
        'svg': flagSvg,
      },
    };
  }
}
