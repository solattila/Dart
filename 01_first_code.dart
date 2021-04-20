void main(List<String> args) {
  var name = myName();
  var country = myCountry();

  /// name = 123; variables type cannot change

  print('My name is $name, and I came from $country.');
  print('Commit and push console out.');

  /// var nameLength = stringLength(name);
  print('${stringLength(name)}');
}

String myName() {
  return 'Attila';
}

myCountry() {
  return 'Hungary';
}

int stringLength(myString) {
  return myString.length;
}
