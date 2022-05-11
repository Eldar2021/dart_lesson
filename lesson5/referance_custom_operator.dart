void main(List<String> args) {
  final user1 = Insan('name', 1);
  final user2 = Insan('name', 2);
  final user3 = Insan('name', 1);
  print(user1 == user2);
  print(user1 == user3);

  final total1 = Total(12);
  final total2 = Total(21);

  print(total1 + total2);
  print(total1.val + total2.val);
}

class Insan {
  final String name;
  final int id;

  Insan(this.name, this.id);

  bool operator ==(Object newObj) => newObj is Insan && newObj.id == id;

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}

class Total {
  final int val;

  Total(this.val);

  int operator +(Total newTotal) => val + newTotal.val;
}
