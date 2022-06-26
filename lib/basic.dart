void main() {
  MyApp std1 = MyApp(stdName:"Mark", stdAge:18);
  MyApp std2 = MyApp(stdName: "Elon", stdAge: 35, stdId: 102);
  MyApp std3 = MyApp.stdGpa(stdName: "Jeff", stdAge: 45, stdId: 103);

  print('${std1.stdName},${std1.stdAge}');
  print('${std2.stdName},${std2.stdAge},${std2.stdId}');
  print('${std3.stdName},${std3.stdAge},${std3.stdId},${std3.stdGpa}');
}

class MyApp {
  String? stdName;
  int? stdAge;
  int? stdId = 102;
  int? stdGpa;

  //1.Constructor with long hand
  // MyApp(String name, int age, int id) {
  //   stdName = name;
  //   stdAge = age;
  //   stdId = id;
  // }
  //2.Constructor with short hand
  //MyApp(this.stdName,this.stdAge,this.stdId);
  //3.Constructor with Named{} optional parameter
  //MyApp([this.stdName,this.stdAge,this.stdId]);
  //4.Constructor with Positional[] optional parameter
  MyApp({required this.stdName, required this.stdAge, this.stdId});
  //5.Named Constructor
  MyApp.stdGpa({required this.stdName, required this.stdAge, this.stdId}):stdGpa = 4;
}