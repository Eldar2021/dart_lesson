/*
SOLID - аббревиатура, объектке багытталган дизайндын беш принцибине 
(OOD же OOP) таандык. Бул иштеп чыгуучулар колдонуп, башкарууга, 
тейлөөгө жана кеңейтүүгө оңой программаны түзүүдө колдоно алышат. 
Бул түшүнүктөрдү түшүнүү сизди мыкты иштеп чыгуучуга айлантат жана 
программалык камсыздоону башкаруу көйгөйлөрүнөн алыс болууга жардам берет

SOLID аббревиатурасы:

S: бирдиктүү жоопкерчилик принциби single responsibility
O: ачык-жабык принцип open–closed
L: Лисковду алмаштыруу принциби Liskov substitution
I: Интерфейсти бөлүү принциби interface segregation
D: Көзкарандылыктарды инверсиялоо принциби dependency inversion
*/

void main(List<String> args) {
  DataBaseServce servce = Sql();
  servce.write('value');
  final valSql = servce.read();
  print(valSql);

  /// DataBaseServce classybyz Sql da FireBase da bolo alat

  servce = FireBase();
  servce.write('value');
  final valFire = servce.read();
  print(valFire);
}

/*
bir abstract interface arkyluu classtarybyzdy jaratyp 
al classatarybyzdyn biri-birinin orduna koldonula aluusu kerek
biz jalgyz DataBaseServce taanyp anyn write(), read() 
methodtorun koldongonubuzda al Sql koldanabu je FireBase bi
bizge ayirmasy jok bashkalatga taasir etpeshi kerer
*/

abstract class DataBaseServce {
  void write(String val);

  String read();
}

class Sql extends DataBaseServce {
  @override
  String read() => 'value okuldu Sql';

  @override
  void write(String val) => print('$val jazyldy Sql');
}

class FireBase extends DataBaseServce {
  @override
  String read() => 'value okuldu FireBase';

  @override
  void write(String val) => print('$val jazyldy FireBase');
}
