void main() {
  controller(2);
  controller(null);
  controller(0);
}

void controller(int? val) {
  if (val != null) {
    if (val <= 0)
      print('userdin akchasy bar');
    else
      print('userdin akchasy 0');
  } else
    print('userdin akchasy jok');
}
