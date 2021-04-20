main(List<String> args) {
  var person = new Person('Attila', 32, 100.5, true);

  ///  person.firstName = 'Attila';

  person.printPerson();
}

class Person {
  late String firstName;
  late int age;
  late double money;
  late bool isMale;

  Person(this.firstName, this.age, this.money, this.isMale);

  printPerson() {
    print("""Name: ${this.firstName}\
      Age: ${this.age}\
      Money: ${this.money}\
      Male? ${this.isMale}""");
  }
}
