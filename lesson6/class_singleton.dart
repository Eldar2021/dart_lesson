/// {singleton} bir obecktin but project boyuncha bir gana jolu jaratylyp
/// any kay jerde koldonsok da bir gana jolu jaralgan objecten chakyrabyz
///
void main(List<String> args) {
  print(Product.money);
  Product.addMoney(10);
  print(Product.money);
  print(Product.companyName);
}

/// singleton kyluunun bir jolu {static} sozun koldonuu
/// statis kasieti bar objecter ozuznun parant objecti jaratylbasa da
/// koldonula beret
/// bular project bashtalganda jana (chakyrylbasa da koldonulbasa da)
/// bir jolu jaralyp project butkongo cheyin koldonuuga dayar turet
/// kancha jolu chakyrylsa da oshol ele object kelet
///
class Product {
  static int money = 10; // korkunuchtuu
  static const String companyName = 'Muras'; // jakshy

  static void addMoney(int val) {
    money += val;
  }
}
