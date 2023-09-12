bool checkPalindrome(String inputString) {
  String reverseString = inputString.split('').reversed.join();
  return inputString == reverseString;
}

void main(){
  print(checkPalindrome("madam"));
}