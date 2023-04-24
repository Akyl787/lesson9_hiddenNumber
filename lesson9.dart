import 'dart:io';

void main() {
  binary_search();
}

int binary_search() {
  int min = 0;
  int max = 100;
  int steps = 0;
  int mid = (min + max) ~/ 2;
  String? answer = "";
  while (answer != "yes") {
    print("Ваше число больше, меньше или равно $mid");
    answer = stdin.readLineSync();
    if (answer == "greater") {
      min = mid;
      mid = getMiddle(min, max);
      steps ++;
    } else if (answer == "less") {
      max = mid;
      mid = getMiddle(min, max);
      steps ++;
    } else if (answer == "yes") {
      print("угадал за $steps шагов");
    }
  }
  return steps;
}
int getMiddle(int min, int max) {
  return (min + max) ~/ 2;
}
