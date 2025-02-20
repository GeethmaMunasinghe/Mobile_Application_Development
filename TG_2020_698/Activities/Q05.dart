

class Student{
  String name='Geethma';
  int age=24;
  double marks=67.0;

  String get stu_name{
    return name;
  }
  int get stu_age{
    return age;
  }

  double get stu_marks{
    return marks;
  }

  void set stu_name(String name){
    this.name=name;
  }

  void set stu_age(int age){
    this.age=age;
  }

  void set stu_marks(double marks){
    this.marks=marks;
  }

  void student_details(){
    print(name);
    print(age);
    print(marks);
  }

}

void main(){
  Student student=new Student();
  student.student_details();
}