void main(){
  var list=[2,4,5,7,8,9,10,21,30,46];

  print("All the numbers in list: ");
  for(var number in list){
    print(number);
  }


  // Print numbers greater than 5
  print("\nNumbers greater than 5:");
  for (var num in list) {
    if (num > 5) {
      print(num);
    }
  }
}

