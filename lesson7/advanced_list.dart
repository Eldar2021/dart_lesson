void main(List<String> args) {
  final cars = [
    CarModel(
      category: CarEnum.karager,
      name: 'Karager 01',
      price: 99,
      isNew: true,
    ),
    CarModel(
      category: CarEnum.bmw,
      name: 'bmw x7',
      price: 12,
    ),
    CarModel(
      category: CarEnum.mersedes,
      name: 'my bah',
      price: 62,
    ),
    CarModel(
      category: CarEnum.tayota,
      name: 'tayota camry 97',
      price: 87,
      isNew: true,
    ),
  ];

  /// cars tyn ichinde kanchasy jany
  final resNewCount = cars.where((e) => e.isNew == true).length;
  print(resNewCount);

  /// bizge jany mashina geldi bizde bul barby
  final newCar = CarModel(
    category: CarEnum.tayota,
    name: 'tayota camry 97',
    price: 87,
    isNew: true,
  );

  final resNewCar = cars.contains(newCar);
  print(resNewCar);

  /// bizge model bmw jsna baasy 20 dan jogoru mashinalardy ber
  final res1 = cars.where((e) => e.category == CarEnum.bmw && e.price > 10);
  print(res1);

  /// bir mashinanyn indexin alyp ber
  final index = cars.indexOf(newCar);
  print(index);

  /// bizge jangy mashina keldi any kosh
  cars.add(CarModel(category: CarEnum.mersedes, name: 'mers m1', price: 44));
  print(cars);

  /// bizge arzandan kymbatga karay sorttop ber
  cars.sort(((a, b) => a.price.compareTo(b.price)));
  print(cars);

  /// {expand} listtin ichindegi parametrelerin listeyt
  final expands = cars.expand((e) => [e.isNew]);
  print(expands);
}

class CarModel {
  final CarEnum category;
  final String name;
  final double price;
  String? city;
  bool isNew;

  CarModel({
    required this.category,
    required this.name,
    required this.price,
    this.city,
    this.isNew = false,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.price == price &&
        other.city == city &&
        other.isNew == isNew;
  }

  @override
  String toString() {
    return '${this.name}: ${this.price}';
  }
}

enum CarEnum { bmw, mersedes, tayota, karager }
