import 'package:mobx/mobx.dart';

//final counter = Observable(0);

class Counter {
  // Construtor
  // ignore: non_constant_identifier_names
  Counter() {
    increment = Action(_increment);
  }

  Observable _count = Observable(0);

  int get count => _count.value;

  Action increment;

  void _increment() {
    _count.value++;
  }
}
