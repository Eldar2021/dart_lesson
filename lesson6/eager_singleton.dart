/// {Eager} project bashtalganda project menen kosho bashtalat

void main(List<String> args) {
  /// {._()} belgisi object jarataarda konul buruunu sharttait
  /// a eger object tin default kasietini ee bolgubuz kelse {instance}
  /// arkyluu koldono alabyz
  /// kancha iret chakyrylsa da bit gana intance tan alyp kelet
  ///

  final apiKey = ApiKey._('api');
  print(apiKey.apiKey);

  final apiKey1 = ApiKey.instance;
  final apiKey2 = ApiKey.instance;

  print(apiKey1.apiKey);
  print(apiKey2.apiKey);

  print(apiKey1 == apiKey2);
}

/// bir class ty singleton (project jarangandan olgongo cheyin biroo gana bolot)
/// kyluunu kaalasak {._()} methodun koldonobuz bul bizge bul classtan bashla ornok
/// tuzuluusun chekteyt

class ApiKey {
  static const instance = ApiKey._('apiKey');

  final String apiKey;

  const ApiKey._(this.apiKey);
}
