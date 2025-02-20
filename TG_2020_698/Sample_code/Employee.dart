class Employee {
  String name='Geethma';

   //Getter method
  String get emp_name{
    return name;
  }

  //Setter method
  void set emp_name(String name){
      this.name=name;
  }

//Function definition
  void result(){
    print(name);
  }
}

void main(){
  Employee emp=new Employee();
  emp.name='Employee1';
  emp.result();
}
  
 
