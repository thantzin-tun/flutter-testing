class FutureObject {
   Future<Person> get getPerson {
      final person = Future.delayed(const Duration(seconds: 5),() {
          return Person(name:"Hla Hla",phoneNumber: 0941591844);
      });
      return person;
   }
}

class Person {
    final String? name;
    final int?  phoneNumber;
    Person({this.name,this.phoneNumber});
}