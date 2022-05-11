// ignore_for_file: unused_local_variable

void main() {
  // ar kandai ozgorulmoluu list
  List list = [10, 1, "eld", true];

  //bir tiptuu <int> ozgotmolorun algan list
  List<int> intList = [1, 2, 4, 5];
  // List<int> intList1 = [1, 2, 4, 5, "wefnfwe", true];

  intList.sort(); // sorttoit
  intList.add(6); // listke koshot
  intList.insert(1, 2); // index ke koshot
  print(intList);
  List<int> newList = intList.reversed.toList(); // tetiri kylat
  print(newList);
  intList.clear(); // listti tazalait {ochurot}
}
