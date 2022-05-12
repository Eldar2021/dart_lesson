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

void main(List<String> args) {}

/*
baardyk methodtordu bir abstract classka toptoo jakshy emes 
sebebi kee bir classtar bir gana method menen ishteshi mumkun
*/

abstract class UserServiceKata {
//-----DataBase
  void write();
  void read();
  void delete();
  void update();

//-----Location
  void checkLocation();
  void selectLocation();

//-----Language
  void updateLang();
}

/// bul jerde kata sebebi bir class ozuno taandyk bolbogon serviceter menen
/// ishtep jatat checkLocation() {}...
class UserDataBaseKata extends UserServiceKata {
  @override
  void checkLocation() {}

  @override
  void delete() {}

  @override
  void read() {}

  @override
  void selectLocation() {}

  @override
  void update() {}

  @override
  void updateLang() {}

  @override
  void write() {}
}

//I: Интерфейсти бөлүү принциби interface segregation

/// interfaceterdi boluu kerek

abstract class UserServiceTuura with UserLanguage, UserLocation, UserDatebase {}

abstract class UserDatebase {
  void write();
  void read();
  void delete();
  void update();
}

abstract class UserLocation {
  void checkLocation();
  void selectLocation();
}

abstract class UserLanguage {
  void updateLang();
}

class UserLocationImpl extends UserLocation {
  @override
  void checkLocation() {}

  @override
  void selectLocation() {}
}

class UserLanguageImpl extends UserLanguage {
  @override
  void updateLang() {}
}

class UserDatebaseImpl extends UserDatebase {
  @override
  void delete() {}

  @override
  void read() {}

  @override
  void update() {}

  @override
  void write() {}
}
