/*
{Stream}
*/

void main() {
  Stream<int> moneys = Stream.empty();
  moneys = dataAdd(20, 0);
  moneys.listen((e) => print(e));
}

Stream<int> dataAdd(int retryCount, int money) async* {
  int _localRetry = 0;
  while (_localRetry < retryCount) {
    await Future.delayed(Duration(seconds: 1));
    _localRetry++;
    yield money += 5;
  }
}
