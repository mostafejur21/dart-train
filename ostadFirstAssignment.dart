void main() {
  List<String> phoneNumber = [
    '+88',
    '01768131685',
    '01768171985',
    '01768111286',
    '01768131685',
    '01887788771'
  ];

  String bdCountryCode = '';
  //this loop search the +88 in the list and put it in the bdCountryCode variable

  for (int i = 0; i < phoneNumber.length; i++) {
    if (phoneNumber[i].contains('+88')) {
      bdCountryCode = phoneNumber[i];
      break;
    }
  }

  //this loop add +88 infront of every number except +88
  for (int i = 0; i < phoneNumber.length; i++) {
    if (phoneNumber[i] != bdCountryCode) {
      phoneNumber[i] = '+88${phoneNumber[i]}';
    }
  }

  //this loop print the list without +88
  for (String number in phoneNumber) {
    if (number != bdCountryCode) {
      print(number);
    }
  }
}
