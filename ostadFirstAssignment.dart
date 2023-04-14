void main() {
  List<String> phoneNumber = [
    '01768131685',
    '+88',
    '01768171985',
    '01768111286',
    '01768131685',
    '01887788771'
  ];

  String plus88 = '';

  for (int i = 0; i < phoneNumber.length; i++) {
    if (phoneNumber[i].contains('+88')) {
      plus88 = phoneNumber[i];
      break;
    }
  }

  for (int i = 0; i < phoneNumber.length; i++) {
    if (phoneNumber[i] != plus88) {
      phoneNumber[i] = '+88${phoneNumber[i]}';
    }
  }

  for (String number in phoneNumber) {
    if (number != plus88) {
      print(number);
    }
  }
}
