class DetailsModel {
  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<int>? latlng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;

  DetailsModel(
      {this.name,
      this.tld,
      this.cca2,
      this.ccn3,
      this.cca3,
      this.cioc,
      this.independent,
      this.status,
      this.unMember,
      this.currencies,
      this.idd,
      this.capital,
      this.altSpellings,
      this.region,
      this.subregion,
      this.languages,
      this.translations,
      this.latlng,
      this.landlocked,
      this.borders,
      this.area,
      this.demonyms,
      this.flag,
      this.maps,
      this.population,
      this.fifa,
      this.car,
      this.timezones,
      this.continents,
      this.flags,
      this.coatOfArms,
      this.startOfWeek,
      this.capitalInfo,
      this.postalCode});

  DetailsModel.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    tld = json['tld']?.cast<String>();
    cca2 = json['cca2'];
    ccn3 = json['ccn3'];
    cca3 = json['cca3'];
    cioc = json['cioc'];
    independent = json['independent'];
    status = json['status'];
    unMember = json['unMember'];
    currencies = json['currencies'] != null
        ? Currencies.fromJson(json['currencies'])
        : null;
    idd = json['idd'] != null ? Idd.fromJson(json['idd']) : null;
    capital = json['capital']?.cast<String>();
    altSpellings = json['altSpellings'].cast<String>();
    region = json['region'];
    subregion = json['subregion'];
    languages = json['languages'] != null
        ? Languages.fromJson(json['languages'])
        : null;
    translations = json['translations'] != null
        ? Translations.fromJson(json['translations'])
        : null;
    latlng = json['latlng'].cast<int>();
    landlocked = json['landlocked'];
    borders = json['borders']?.cast<String>() ?? null;
    area = json['area'];
    demonyms = json['demonyms'] != null
        ? Demonyms.fromJson(json['demonyms'])
        : null;
    flag = json['flag'];
    maps = json['maps'] != null ? Maps.fromJson(json['maps']) : null;
    population = json['population'];
    fifa = json['fifa'];
    car = json['car'] != null ? Car.fromJson(json['car']) : null;
    timezones = json['timezones'].cast<String>();
    continents = json['continents'].cast<String>();
    flags = json['flags'] != null ? Flags.fromJson(json['flags']) : null;
    coatOfArms = json['coatOfArms'] != null
        ? CoatOfArms.fromJson(json['coatOfArms'])
        : null;
    startOfWeek = json['startOfWeek'];
    capitalInfo = json['capitalInfo'] != null
        ? CapitalInfo.fromJson(json['capitalInfo'])
        : null;
    postalCode = json['postalCode'] != null
        ? PostalCode.fromJson(json['postalCode'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['tld'] = tld;
    data['cca2'] = cca2;
    data['ccn3'] = ccn3;
    data['cca3'] = cca3;
    data['cioc'] = cioc;
    data['independent'] = independent;
    data['status'] = status;
    data['unMember'] = unMember;
    if (currencies != null) {
      data['currencies'] = currencies!.toJson();
    }
    if (idd != null) {
      data['idd'] = idd!.toJson();
    }
    data['capital'] = capital;
    data['altSpellings'] = altSpellings;
    data['region'] = region;
    data['subregion'] = subregion;
    if (languages != null) {
      data['languages'] = languages!.toJson();
    }
    if (translations != null) {
      data['translations'] = translations!.toJson();
    }
    data['latlng'] = latlng;
    data['landlocked'] = landlocked;
    data['borders'] = borders;
    data['area'] = area;
    if (demonyms != null) {
      data['demonyms'] = demonyms!.toJson();
    }
    data['flag'] = flag;
    if (maps != null) {
      data['maps'] = maps!.toJson();
    }
    data['population'] = population;
    data['fifa'] = fifa;
    if (car != null) {
      data['car'] = car!.toJson();
    }
    data['timezones'] = timezones;
    data['continents'] = continents;
    if (flags != null) {
      data['flags'] = flags!.toJson();
    }
    if (coatOfArms != null) {
      data['coatOfArms'] = coatOfArms!.toJson();
    }
    data['startOfWeek'] = startOfWeek;
    if (capitalInfo != null) {
      data['capitalInfo'] = capitalInfo!.toJson();
    }
    if (postalCode != null) {
      data['postalCode'] = postalCode!.toJson();
    }
    return data;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ? NativeName.fromJson(json['nativeName'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['common'] = common;
    data['official'] = official;
    if (nativeName != null) {
      data['nativeName'] = nativeName!.toJson();
    }
    return data;
  }
}

class NativeName {
  Ara? ara;

  NativeName({this.ara});

  NativeName.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? Ara.fromJson(json['ara']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (ara != null) {
      data['ara'] = ara!.toJson();
    }
    return data;
  }
}

class Ara {
  String? official;
  String? common;

  Ara({this.official, this.common});

  Ara.fromJson(Map<String, dynamic> json) {
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['official'] = official;
    data['common'] = common;
    return data;
  }
}

class Currencies {
  SAR? sAR;

  Currencies({this.sAR});

  Currencies.fromJson(Map<String, dynamic> json) {
    sAR = json['SAR'] != null ? SAR.fromJson(json['SAR']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sAR != null) {
      data['SAR'] = sAR!.toJson();
    }
    return data;
  }
}

class SAR {
  String? name;
  String? symbol;

  SAR({this.name, this.symbol});

  SAR.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['symbol'] = symbol;
    return data;
  }
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({this.root, this.suffixes});

  Idd.fromJson(Map<String, dynamic> json) {
    root = json['root'];
    suffixes = json['suffixes']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['root'] = root;
    data['suffixes'] = suffixes;
    return data;
  }
}

class Languages {
  String? ara;

  Languages({this.ara});

  Languages.fromJson(Map<String, dynamic> json) {
    ara = json['ara'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ara'] = ara;
    return data;
  }
}

class Translations {
  Ara? ara;
  Ara? bre;
  Ara? ces;
  Ara? cym;
  Ara? deu;
  Ara? est;
  Ara? fin;
  Eng? fra;
  Ara? hrv;
  Ara? hun;
  Ara? ita;
  Ara? jpn;
  Ara? kor;
  Ara? nld;
  Ara? per;
  Ara? pol;
  Ara? por;
  Ara? rus;
  Ara? slk;
  Ara? spa;
  Ara? srp;
  Ara? swe;
  Ara? tur;
  Ara? urd;
  Ara? zho;

  Translations(
      {this.ara,
      this.bre,
      this.ces,
      this.cym,
      this.deu,
      this.est,
      this.fin,
      this.fra,
      this.hrv,
      this.hun,
      this.ita,
      this.jpn,
      this.kor,
      this.nld,
      this.per,
      this.pol,
      this.por,
      this.rus,
      this.slk,
      this.spa,
      this.srp,
      this.swe,
      this.tur,
      this.urd,
      this.zho});

  Translations.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? Ara.fromJson(json['ara']) : null;
    bre = json['bre'] != null ? Ara.fromJson(json['bre']) : null;
    ces = json['ces'] != null ? Ara.fromJson(json['ces']) : null;
    cym = json['cym'] != null ? Ara.fromJson(json['cym']) : null;
    deu = json['deu'] != null ? Ara.fromJson(json['deu']) : null;
    est = json['est'] != null ? Ara.fromJson(json['est']) : null;
    fin = json['fin'] != null ? Ara.fromJson(json['fin']) : null;
    fra = json['fra'] != null ? Eng.fromJson(json['fra']) : null;
    hrv = json['hrv'] != null ? Ara.fromJson(json['hrv']) : null;
    hun = json['hun'] != null ? Ara.fromJson(json['hun']) : null;
    ita = json['ita'] != null ? Ara.fromJson(json['ita']) : null;
    jpn = json['jpn'] != null ? Ara.fromJson(json['jpn']) : null;
    kor = json['kor'] != null ? Ara.fromJson(json['kor']) : null;
    nld = json['nld'] != null ? Ara.fromJson(json['nld']) : null;
    per = json['per'] != null ? Ara.fromJson(json['per']) : null;
    pol = json['pol'] != null ? Ara.fromJson(json['pol']) : null;
    por = json['por'] != null ? Ara.fromJson(json['por']) : null;
    rus = json['rus'] != null ? Ara.fromJson(json['rus']) : null;
    slk = json['slk'] != null ? Ara.fromJson(json['slk']) : null;
    spa = json['spa'] != null ? Ara.fromJson(json['spa']) : null;
    srp = json['srp'] != null ? Ara.fromJson(json['srp']) : null;
    swe = json['swe'] != null ? Ara.fromJson(json['swe']) : null;
    tur = json['tur'] != null ? Ara.fromJson(json['tur']) : null;
    urd = json['urd'] != null ? Ara.fromJson(json['urd']) : null;
    zho = json['zho'] != null ? Ara.fromJson(json['zho']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (ara != null) {
      data['ara'] = ara!.toJson();
    }
    if (bre != null) {
      data['bre'] = bre!.toJson();
    }
    if (ces != null) {
      data['ces'] = ces!.toJson();
    }
    if (cym != null) {
      data['cym'] = cym!.toJson();
    }
    if (deu != null) {
      data['deu'] = deu!.toJson();
    }
    if (est != null) {
      data['est'] = est!.toJson();
    }
    if (fin != null) {
      data['fin'] = fin!.toJson();
    }
    if (fra != null) {
      data['fra'] = fra!.toJson();
    }
    if (hrv != null) {
      data['hrv'] = hrv!.toJson();
    }
    if (hun != null) {
      data['hun'] = hun!.toJson();
    }
    if (ita != null) {
      data['ita'] = ita!.toJson();
    }
    if (jpn != null) {
      data['jpn'] = jpn!.toJson();
    }
    if (kor != null) {
      data['kor'] = kor!.toJson();
    }
    if (nld != null) {
      data['nld'] = nld!.toJson();
    }
    if (per != null) {
      data['per'] = per!.toJson();
    }
    if (pol != null) {
      data['pol'] = pol!.toJson();
    }
    if (por != null) {
      data['por'] = por!.toJson();
    }
    if (rus != null) {
      data['rus'] = rus!.toJson();
    }
    if (slk != null) {
      data['slk'] = slk!.toJson();
    }
    if (spa != null) {
      data['spa'] = spa!.toJson();
    }
    if (srp != null) {
      data['srp'] = srp!.toJson();
    }
    if (swe != null) {
      data['swe'] = swe!.toJson();
    }
    if (tur != null) {
      data['tur'] = tur!.toJson();
    }
    if (urd != null) {
      data['urd'] = urd!.toJson();
    }
    if (zho != null) {
      data['zho'] = zho!.toJson();
    }
    return data;
  }
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({this.eng, this.fra});

  Demonyms.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] != null ? Eng.fromJson(json['eng']) : null;
    fra = json['fra'] != null ? Eng.fromJson(json['fra']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (eng != null) {
      data['eng'] = eng!.toJson();
    }
    if (fra != null) {
      data['fra'] = fra!.toJson();
    }
    return data;
  }
}

class Eng {
  String? f;
  String? m;

  Eng({this.f, this.m});

  Eng.fromJson(Map<String, dynamic> json) {
    f = json['f'];
    m = json['m'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['f'] = f;
    data['m'] = m;
    return data;
  }
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({this.googleMaps, this.openStreetMaps});

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['googleMaps'] = googleMaps;
    data['openStreetMaps'] = openStreetMaps;
    return data;
  }
}

class Car {
  List<String>? signs;
  String? side;

  Car({this.signs, this.side});

  Car.fromJson(Map<String, dynamic> json) {
    signs = json['signs']?.cast<String>();
    side = json['side'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['signs'] = signs;
    data['side'] = side;
    return data;
  }
}

class Flags {
  String? png;
  String? svg;
  String? alt;

  Flags({this.png, this.svg, this.alt});

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
    alt = json['alt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['png'] = png;
    data['svg'] = svg;
    data['alt'] = alt;
    return data;
  }
}

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({this.png, this.svg});

  CoatOfArms.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['png'] = png;
    data['svg'] = svg;
    return data;
  }
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({this.latlng});

  CapitalInfo.fromJson(Map<String, dynamic> json) {
    latlng = json['latlng']?.cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['latlng'] = latlng;
    return data;
  }
}

class PostalCode {
  String? format;
  String? regex;

  PostalCode({this.format, this.regex});

  PostalCode.fromJson(Map<String, dynamic> json) {
    format = json['format'];
    regex = json['regex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['format'] = format;
    data['regex'] = regex;
    return data;
  }
}
