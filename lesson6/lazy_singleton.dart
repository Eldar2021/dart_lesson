/// {Lazy} project bashtalganda tuzulboit da kachan chakyrylganda
/// tuzulot jana bashka chakyruukarda birinchi tuzulgonun koldonot

void main(List<String> args) {
  final apiKey1 = ApiKey.instance;
  final apiKey2 = ApiKey.instance;

  print(apiKey1.val);
  print(apiKey2.val);
  print(apiKey1 == apiKey2);
}

/// ApiKey degen classybyz baashynda jok bolot
/// kachan al chakyrylganda murda tuzulgonun kontrol kylat
/// eger tuzulgon bolso any beret
/// eger jok bolse tuzot da beret

class ApiKey {
  static ApiKey? _instance;
  static ApiKey get instance {
    if (_instance == null) _instance = ApiKey._init();
    return _instance!;
  }

  ApiKey._init();

  final String val = 'apiKey';
}
