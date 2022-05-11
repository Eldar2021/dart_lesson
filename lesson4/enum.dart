void main(List<String> args) {
  final mause1 = Mouses.apple;

  switch (mause1) {
    case Mouses.magic:
      print(
        'my mause is mause1: $mause1 name: ${mause1.name} index: ${mause1.index}',
      );
      break;
    case Mouses.apple:
      print(
        'my mause is mause1: $mause1 name: ${mause1.name} index: ${mause1.index}',
      );
      break;
    case Mouses.log:
      print(
        'my mause is mause1: $mause1 name: ${mause1.name} index: ${mause1.index}',
      );
      break;
  }
}

enum Mouses { magic, apple, log }
