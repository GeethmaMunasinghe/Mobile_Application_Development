import 'dart:io';

String reverseWords(String sentence){
  List<String>words=sentence.split('');
  return words.reversed.join('');

}

void main(){
  stdout.write("Enter a long string with multiple words: ");
  String userInput=stdin.readLineSync()!;
  String reverseSentence=reverseWords(userInput);
  print("Reverse word: $reverseSentence");
}