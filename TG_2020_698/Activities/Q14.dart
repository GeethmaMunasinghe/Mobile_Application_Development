
import 'dart:math';

String generatePassword(int length) {
  const String lowerCase = 'abcdefghijklmnopqrstuvwxyz';
  const String upperCase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String numbers = '0123456789';
  const String symbols = '!@#\$%^&*()-_=+<>?';

  // Combine all character sets
  final String allChars = lowerCase + upperCase + numbers + symbols;
  final Random random = Random();

  // Ensure password contains at least one of each type
  String password = '';
  password += lowerCase[random.nextInt(lowerCase.length)];
  password += upperCase[random.nextInt(upperCase.length)];
  password += numbers[random.nextInt(numbers.length)];
  password += symbols[random.nextInt(symbols.length)];

  // Fill remaining length with random characters
  for (int i = 4; i < length; i++) {
    password += allChars[random.nextInt(allChars.length)];
  }

  // Shuffle password characters for randomness
  List<String> shuffledPassword = password.split('')..shuffle();
  return shuffledPassword.join();
}

void main() {
  int passwordLength = 12; // Change this for different lengths
  print("Generated Password: ${generatePassword(passwordLength)}");
}
