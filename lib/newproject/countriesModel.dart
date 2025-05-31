class CountriesModel {
  final String abbreviation;
  final String capital;
  final String currency;
  final String name;
  final String phone;
  final int population;
  final Media media;
  final int id;

  CountriesModel(
      {required this.abbreviation,
      required this.capital,
      required this.currency,
      required this.name,
      required this.phone,
      required this.population,
      required this.media,
      required this.id});

  factory CountriesModel.fromJson(Map<String, dynamic> json) {
    return CountriesModel(
      abbreviation: json['abbreviation'] ?? "",
      capital: json['capital']??"",
      currency: json['currency']??"",
      name: json['name']??"",
      phone: json['phone']??"",
      population: json['population']?? 0,
      media: json['media']!=null? Media.fromJson(json['media']):Media(),
      id: json['id']?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['abbreviation'] = abbreviation;
    data['capital'] = capital;
    data['currency'] = currency;
    data['name'] = name;
    data['phone'] = phone;
    data['population'] = population;
    if (media != null) {
      data['media'] = media!.toJson();
    }
    data['id'] = id;
    return data;
  }
}

class Media {
  String? flag;
  String? emblem;
  String? orthographic;

  Media({this.flag, this.emblem, this.orthographic});

  Media.fromJson(Map<String, dynamic> json) {
    flag = json['flag'];
    emblem = json['emblem'];
    orthographic = json['orthographic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flag'] = flag;
    data['emblem'] = emblem;
    data['orthographic'] =orthographic;
    return data;
  }
}
