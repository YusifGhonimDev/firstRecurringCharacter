void main() {
  List<int> numbers = [2, 3, 3, 5];
  print(firestRecurringNumber1(numbers));
  print(firstRecurringNumber2(numbers));
}

int? firestRecurringNumber1(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        return numbers[i];
      }
    }
  }
  return null;
}

int? firstRecurringNumber2(List<int> numbers) {
  Set<int> recurredNumbers = {};
  for (int number in numbers) {
    if (recurredNumbers.contains(number)) {
      return number;
    }
    recurredNumbers.add(number);
  }
  return null;
}
