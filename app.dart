

void main(){
  String name = "Thant Zin Tun";
  int age = 23;
  var address = "Yangon";
  bool isMarry = false;
  double weight = 72.2;

  var hobby = ["Apple","Orange","Banana","Mango"];

  var experiences = {"company": "Innovix Solutions","position": "Frontend Developer"};

  experiences["position"] = "Software Developer";

  for(int i = 0;i< experiences.length;i++){
    print("The fruit is $hobby[$i]");
  }

  for(var name in hobby) {
    print(name);
  }

  print(experiences['position']);
  print(experiences.values);
  print(experiences.keys);

  hobby.add("Avocado");
  hobby[4] = "Pineapple";

  myFunc(String position,{name2:"Haha"}) {
    return "You are $position $name2";
  }

  var variable = myFunc("Backend Developer",name2:"in Code2Labs");
  print(variable);

}