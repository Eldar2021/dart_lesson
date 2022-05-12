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
bul jerde UserManeger classynda update name tuura 
birok changeLocalization kata sebebi 
бирдиктүү жоопкерчилик принциби single responsibility
ar bir class je method ozuno gana taandyk mildetterdi atkaruu kerek
andan syrtkary ech bir  jerge taasyr tiygizbooosu kajet
*/

// бирдиктүү жоопкерчилик принциби single responsibility
class UserManeger {
  String name;
  UserManeger(this.name);

  void updtName(String newName) {
    this.name = newName;
  }

  // void changeLocalization() {}
}

// tuurloo uchun
class UserLocalization {
  final UserManeger maneger;

  UserLocalization(this.maneger);

  void changeLocalization() {
    print('almashty');
  }
}