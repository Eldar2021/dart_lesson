void main() {
  final int a = 7;

  /*
  salyshtyruular
  > chong
  < kichine
  == bararbar
  >= chong je barabar
  <= kichine je barabar
  != bararbar emes
  || je
  && jana

  // operation
  + kosh
  - kemit
  / bol
  * koboit
  ** darajaga kotor
  ˜/ togoloktoit (2,1 => 2) al "˜" klavyede kay jerde jaygashkanyn bilbeim ushul siyaktuu belgi 
  % kaldygy 0 je 1 kalganga cheyin bol
  */

  /// CONTROLLER

  if (a < 5) {
    print('a kichine 5 ten');
  } else if (a > 5) {
    print('a chong 5 ten');
  } else {
    print('a barabar 5 ke');
  }

  switch (a) {
    case 1:
      print('a == 1');
      break;
    case 2:
      print('a == 2');
      break;
    case 3:
      print('a == 3');
      break;
    case 4:
      print('a == 4');
      break;
    case 5:
      print('a == 5');
      break;
    default:
      print('a switch salyshtyrylyp buttu');
  }

  /// if else menen switch case conditional salyshtyruuda koldonulat
  /// ayirmasy switch tak barabar bolgon uchurda ishteyt
}
