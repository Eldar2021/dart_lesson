/*
{Future, await , async, sync} 
bizde bir funksiya bar jana al uzak ubakytta butot
biz al funksiyanyn butushun kutobuzbu je bashka ishterdi kylyp turabyzby?
Future - kelechek (kelechecte joop bere turgan funcsiya)
await - Future funcksiyanyn joop berishin kut
async - Future funcksiya atkarylyp jatkanda any bashka thread ke al
eger albasa Future funcksiya joop bergenge cheyin project katat
sync - Future funcksiyanyn joop berishin kutpo mende bashka ishter bar 
alardy atkara ber kachan joop kelgende buga kayrylabyz
*/

void main(List<String> args) {
  func1();
  func2();
}

/// a ny chygar jana 2 second tuk ish bashta Future
/// anyn butushun kutpo da ab chygar
void func1() {
  print('a');
  Future.delayed(Duration(seconds: 2));
  print('ab');
}

/// c ny chygar jana 2 second tuk ish bashta Future
/// anyn butushun kut da cd chygar
Future<void> func2() async {
  print('c');
  await Future.delayed(Duration(seconds: 2));
  print('cd');
}
