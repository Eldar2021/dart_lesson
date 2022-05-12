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

void main(List<String> args) {
  final IOSCamera iosCamera = IOSCamera();
  final AndroidCamera androidCamera = AndroidCamera();
  final ReadQRCode readQRCode = ReadQRCode(iosCamera, androidCamera);

  final res = readQRCode.readQRCode();
  print(res);
}

/// Parent class je interface class
/// child classka koz kararndy bolbosh kerek

//D: Көзкарандылыктарды инверсиялоо принциби dependency inversion
abstract class CameraMeneger {
  String readQRCode();
}

class ReadQRCode extends CameraMeneger {
  final IOSCamera iosCamera;
  final AndroidCamera androidCamera;

  ReadQRCode(this.iosCamera, this.androidCamera);

  @override
  String readQRCode() {
    if (1 == 1)
      return iosCamera.readQRCode();
    else
      return androidCamera.readQRCode();
  }
}

class IOSCamera extends CameraMeneger {
  @override
  String readQRCode() => 'IOS camera';
}

class AndroidCamera extends CameraMeneger {
  @override
  String readQRCode() => 'Android camera';
}
