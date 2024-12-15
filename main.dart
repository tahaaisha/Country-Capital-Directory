import 'dart:io';

void main() {
  Map<String, String> countarycapital = {
    'Egypt': 'cairo',
    'Saudan': 'Alkhartom',
    'Saudia': 'Alriad',
    'Alemarat': 'Abozabia',
  };
  while (true) {
    print("\n hello dear");
    print('1. Add new Country and Capital');
    print('2. update name of Capital');
    print('3. View All Countries and Capitals');
    print('4. Get name of Capital when enter a Country');
    print('5. Exit');
    stdout.write('choose an option');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addcountaryandcapital(countarycapital);
        break;
      case '2':
        updatecapital(countarycapital);
        break;
      case '3':
        displaycapitalandcountary(countarycapital);
        break;
      case '4':
        displaycapitalofcountary(countarycapital);
        break;
      case '5':
        print(' Exit the program');
        return;
      default:
        print('invalid please try to choice again');
    }
  }
}

void addcountaryandcapital(Map<String, String> addmap) {
  stdout.write('Enter countary name');
  String? countary = stdin.readLineSync();
  stdout.write('Enter capital name');
  String? capital = stdin.readLineSync();
  if (countary != null &&
      capital != null &&
      countary.isNotEmpty &&
      capital.isNotEmpty) {
    print('add new $countary-$capital');
  } else {
    print('not valid');
  }
}

void updatecapital(Map<String, String> updatemap) {
  stdout.write('Enter countary name');
  String? countary = stdin.readLineSync();
  if (countary != null && updatemap.containsKey(countary)) {
    stdout.write('Enter capital name');
    String? capital = stdin.readLineSync();
    if (capital != null && capital.isNotEmpty) {
      updatemap[countary] = capital;
      print('$countary updated to $capital');
    } else {
      print('not correct ');
    }
  } else {
    print('not exist');
  }
}

void displaycapitalandcountary(Map<String, String> displaymap) {
  if (displaymap.isEmpty) {
    print('no thing to view');
  } else {
    print('all countary and capitals');
    displaymap.forEach((countary, capital) {
      print('$countary:$capital');
    });
  }
}

void displaycapitalofcountary(Map<String, String> showmap) {
  stdout.write('Enter countary name');
  String? countary = stdin.readLineSync();
  String? capital = showmap[countary];
  if (capital != null) {
    print('the capital of $countary is $capital');
  } else {
    print('sorry countary not found');
  }
}
