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
bir classtan bashka bir class tuzsok al parent class menen gana chectelip
kalbai chngoyo alysh kerek
 */

//O: ачык-жабык принцип open–closed
class Product {
  final String name;
  final String price;

  Product(this.name, this.price);
}

/// bul jerde Product  String name,
/// String price, koldondu jana ozu String category;
/// menen kengeidi
class ProductCategories extends Product {
  ProductCategories(
    this.category,
    String name,
    String price,
  ) : super(name, price);

  final String category;
}
