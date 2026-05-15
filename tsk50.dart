import 'dart:math' as math;

// ==================== БЛОК 1: Integer (int) — Задания 1–10 ====================

void main() {
  print('========== БЛОК 1: Integer (int) ==========\n');

  // 1. Основные операции с целыми числами
  print('1. Основные операции:');
  int a1 = 15, b1 = 4;
  print('   Сумма: ${a1 + b1}');
  print('   Разность: ${a1 - b1}');
  print('   Произведение: ${a1 * b1}');
  print('   Целочисленное деление: ${a1 ~/ b1}');
  print('   Остаток: ${a1 % b1}\n');

  // 2. Чётность и нечётность
  print('2. Чётность/нечётность:');
  int num2 = 7;
  print('   $num2 — ${num2.isEven ? "чётное" : "нечётное"} число\n');

  // 3. Куб числа
  print('3. Куб числа:');
  int num3 = 5;
  print('   куб числа $num3 = ${num3 * num3 * num3}\n');

  // 4. Абсолютное значение
  print('4. Абсолютное значение:');
  int num4 = -42;
  print('   Абсолютное значение -42 = ${num4.abs()}\n');

  // 5. Факториал
  print('5. Факториал:');
  int n5 = 5, fact5 = 1;
  for (int i = 2; i <= n5; i++) fact5 *= i;
  print('   Факториал $n5 = $fact5\n');

  // 6. Проверка диапазона
  print('6. Проверка диапазона [10, 100]:');
  int num6 = 50;
  print('   $num6 ${(num6 >= 10 && num6 <= 100) ? "находится в диапазоне" : "не в диапазоне"}\n');

  // 7. Сумма цифр
  print('7. Сумма цифр:');
  int num7 = 456, sum7 = 0, temp7 = num7;
  while (temp7 > 0) {
    sum7 += temp7 % 10;
    temp7 ~/= 10;
  }
  print('   Сумма цифр $num7 = $sum7\n');

  // 8. Количество цифр
  print('8. Количество цифр:');
  int num8 = 12345;
  print('   Количество цифр: ${num8.toString().length}\n');

  // 9. Палиндром из цифр
  print('9. Палиндром из цифр:');
  int num9 = 12321;
  String s9 = num9.toString();
  print('   $num9 — ${s9 == s9.split('').reversed.join('') ? "палиндром" : "не палиндром"}\n');

  // 10. Максимум и минимум из трёх чисел
  print('10. Максимум и минимум:');
  int a10 = 10, b10 = 25, c10 = 15;
  print('   Максимум: ${[a10, b10, c10].reduce((x, y) => x > y ? x : y)}');
  print('   Минимум: ${[a10, b10, c10].reduce((x, y) => x < y ? x : y)}\n');

// ==================== БЛОК 2: Double — Задания 11–20 ====================

  print('========== БЛОК 2: Double ==========\n');

  // 11. Операции с дробными числами
  print('11. Операции с дробными:');
  double x11 = 7.5, y11 = 2.5;
  print('   Сумма: ${x11 + y11}');
  print('   Разность: ${x11 - y11}');
  print('   Произведение: ${x11 * y11}');
  print('   Частное: ${x11 / y11}\n');

  // 12. Площадь круга
  print('12. Площадь круга:');
  double radius12 = 5.0;
  print('   Площадь круга с радиусом $radius12 = ${3.14159 * radius12 * radius12}\n');

  // 13. Периметр круга
  print('13. Периметр круга:');
  double radius13 = 3.0;
  print('   Периметр = ${2 * 3.14159 * radius13}\n');

  // 14. Перевод температуры
  print('14. Перевод температуры:');
  double celsius14 = 25.0;
  print('   $celsius14 °C = ${celsius14 * 1.8 + 32} °F\n');

  // 15. Округление и методы double
  print('15. Округление:');
  double num15 = 3.7;
  print('   ceil= ${num15.ceil()}, floor= ${num15.floor()}, round= ${num15.round()}, toInt= ${num15.toInt()}\n');

  // 16. Среднее арифметическое
  print('16. Среднее арифметическое:');
  double a16 = 10.5, b16 = 20.3, c16 = 15.2;
  print('   Среднее: ${(a16 + b16 + c16) / 3}\n');

  // 17. Площадь треугольника (формула Герона)
  print('17. Площадь треугольника (Герон):');
  double a17 = 5.0, b17 = 6.0, c17 = 7.0;
  double p17 = (a17 + b17 + c17) / 2;
  double area17 = math.sqrt(p17 * (p17 - a17) * (p17 - b17) * (p17 - c17));
  print('   Площадь: $area17\n');

  // 18. Расстояние между двумя точками
  print('18. Расстояние между точками:');
  double x1_18 = 0, y1_18 = 0, x2_18 = 3, y2_18 = 4;
  double dist18 = math.sqrt((x2_18 - x1_18) * (x2_18 - x1_18) + (y2_18 - y1_18) * (y2_18 - y1_18));
  print('   Расстояние = $dist18\n');

  // 19. Проверка специальных значений
  print('19. Специальные значения:');
  double normal19 = 10.5, infinity19 = double.infinity, nan19 = double.nan;
  print('   normal.isFinite: ${normal19.isFinite}, .isInfinite: ${normal19.isInfinite}, .isNaN: ${normal19.isNaN}');
  print('   infinity.isFinite: ${infinity19.isFinite}, .isInfinite: ${infinity19.isInfinite}');
  print('   nan.isNaN: ${nan19.isNaN}\n');

  // 20. Процентный расчёт
  print('20. Процентный расчёт:');
  double amount20 = 1000.0, percent20 = 15.0;
  print('   $percent20 % от $amount20 = ${amount20 * percent20 / 100}\n');

// ==================== БЛОК 3: String — Задания 21–30 ====================

  print('========== БЛОК 3: String ==========\n');

  // 21. Основные операции со строками
  print('21. Основные операции:');
  String text21 = 'Flutter';
  print('   Длина: ${text21.length}, первый символ: ${text21[0]}, последний: ${text21[text21.length - 1]}\n');

  // 22. Интерполяция строк
  print('22. Интерполяция:');
  String name22 = 'Иван';
  int age22 = 25;
  String city22 = 'Москва';
  print('   Меня зовут $name22, мне $age22 лет, я из $city22\n');

  // 23. Преобразование регистра
  print('23. Преобразование регистра:');
  String text23 = 'DaRt PrOgRaMmInG';
  print('   Верхний: ${text23.toUpperCase()}');
  print('   Нижний: ${text23.toLowerCase()}\n');

  // 24. Поиск подстроки
  print('24. Поиск подстроки:');
  String text24 = 'Привет, Дарт!';
  String sub24 = 'Дарт';
  print('   "$sub24" найдено в позиции ${text24.indexOf(sub24)}\n');

  // 25. Извлечение подстроки
  print('25. Извлечение подстроки:');
  String text25 = 'Язык программирования';
  print('   Первые 5: "${text25.substring(0, 5)}"');
  print('   Последние 4: "${text25.substring(text25.length - 4)}"\n');

  // 26. Разбиение строки
  print('26. Разбиение строки:');
  String csv26 = 'apple,banana,cherry,date';
  List<String> parts26 = csv26.split(',');
  print('   Результат: $parts26\n');

  // 27. Объединение строк
  print('27. Объединение строк:');
  String word1_27 = 'Hello', word2_27 = 'World', word3_27 = 'Dart';
  print('   ${word1_27} ${word2_27} ${word3_27}\n');

  // 28. Проверка строки на палиндром
  print('28. Строка-палиндром:');
  String text28 = 'racecar';
  String reversed28 = text28.split('').reversed.join('');
  print('   "$text28" — ${text28 == reversed28 ? "палиндром" : "не палиндром"}\n');

  // 29. Подсчёт гласных и согласных
  print('29. Гласные и согласные:');
  String text29 = 'Programming'.toLowerCase();
  String vowels29 = 'aeiou';
  int vowelCount29 = 0, consCount29 = 0;
  for (int i = 0; i < text29.length; i++) {
    if (vowels29.contains(text29[i])) {
      vowelCount29++;
    } else if (RegExp(r'[a-z]').hasMatch(text29[i])) {
      consCount29++;
    }
  }
  print('   Гласных: $vowelCount29, Согласных: $consCount29\n');

  // 30. Удаление пробелов и замена
  print('30. Удаление пробелов и замена:');
  String text30 = ' Hello World ';
  print('   Без пробелов: "${text30.trim()}"');
  print('   Замена пробелов на _: "${text30.replaceAll(' ', '_')}"\n');

// ==================== БЛОК 4: Bool — Задания 31–35 ====================

  print('========== БЛОК 4: Bool ==========\n');

  // 31. Логические операции
  print('31. Логические операции:');
  bool a31 = true, b31 = false;
  print('   a && b: ${a31 && b31}');
  print('   a || b: ${a31 || b31}');
  print('   !a: ${!a31}\n');

  // 32. Сравнения и логика
  print('32. Сравнения и логика:');
  int x32 = 10, y32 = 20;
  print('   x > 5 && y > 15: ${x32 > 5 && y32 > 15}');
  print('   x < 5 || y < 15: ${x32 < 5 || y32 < 15}\n');

  // 33. Проверка валидности пароля
  print('33. Проверка пароля:');
  String password33 = 'MyPass123';
  bool isValid33 = password33.length >= 8 &&
      password33.contains(RegExp(r'\d')) &&
      password33.contains(RegExp(r'[A-Z]'));
  print('   Пароль "$password33" — ${isValid33 ? "действителен" : "недействителен"}\n');

  // 34. Тернарный оператор
  print('34. Тернарный оператор:');
  int age34 = 18;
  String status34 = age34 >= 18 ? 'взрослый' : 'ребёнок';
  print('   Статус: $status34\n');

  // 35. Объединение со значением null
  print('35. Объединение с null:');
  bool? value35;
  bool result35 = value35 ?? false;
  print('   Результат: $result35\n');

// ==================== БЛОК 5: List — Задания 36–40 ====================

  print('========== БЛОК 5: List ==========\n');

  // 36. Создание списка и доступ
  print('36. Создание списка:');
  List<int> numbers36 = [10, 20, 30, 40, 50];
  print('   Элементы: $numbers36');
  print('   Количество: ${numbers36.length}\n');

  // 37. Добавление и удаление
  print('37. Добавление и удаление:');
  List<String> fruits37 = ['apple', 'banana'];
  fruits37.add('cherry');
  fruits37.add('date');
  fruits37.remove('banana');
  print('   Результат: $fruits37\n');

  // 38. Фильтрация списка
  print('38. Фильтрация (чётные числа):');
  List<int> numbers38 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evens38 = numbers38.where((n) => n.isEven).toList();
  print('   Чётные: $evens38\n');

  // 39. Преобразование списка (map)
  print('39. Преобразование (квадраты):');
  List<int> numbers39 = [1, 2, 3, 4, 5];
  List<int> squares39 = numbers39.map((n) => n * n).toList();
  print('   Квадраты: $squares39\n');

  // 40. Сортировка и переворот
  print('40. Сортировка и переворот:');
  List<int> numbers40 = [3, 1, 4, 1, 5, 9, 2, 6];
  numbers40.sort();
  print('   Сортировка: $numbers40');
  print('   Переворот: ${numbers40.reversed.toList()}\n');

// ==================== БЛОК 6: Map — Задания 41–45 ====================

  print('========== БЛОК 6: Map ==========\n');

  // 41. Создание Map и доступ
  print('41. Создание Map:');
  Map<String, int> grades41 = {'Иван': 85, 'Мария': 92, 'Петр': 78};
  print('   Оценки:');
  grades41.forEach((name, grade) => print('     $name: $grade'));
  print('');

  // 42. Добавление и обновление
  print('42. Добавление и обновление:');
  Map<String, String> capitals42 = {'Франция': 'Париж', 'Германия': 'Берлин'};
  capitals42['Испания'] = 'Мадрид';
  capitals42['Франция'] = 'Версаль';
  print('   Столицы: $capitals42\n');

  // 43. Итерация по Map
  print('43. Итерация по Map:');
  Map<String, int> prices43 = {'apple': 50, 'banana': 30, 'cherry': 80};
  prices43.forEach((product, price) => print('   $product: $price руб'));
  print('');

  // 44. Фильтрация Map
  print('44. Фильтрация Map (>70):');
  Map<String, int> scores44 = {'test1': 65, 'test2': 85, 'test3': 75, 'test4': 55};
  var filtered44 = Map.fromEntries(scores44.entries.where((e) => e.value > 70));
  print('   Результат: $filtered44\n');

  // 45. Слияние Map
  print('45. Слияние Map:');
  Map<String, int> map1_45 = {'a': 1, 'b': 2};
  Map<String, int> map2_45 = {'c': 3, 'd': 4};
  Map<String, int> merged45 = {...map1_45, ...map2_45};
  print('   Объединение: $merged45\n');

// ==================== БЛОК 7: Set — Задания 46–50 ====================

  print('========== БЛОК 7: Set ==========\n');

  // 46. Создание и доступ к Set (убрал дубликаты)
  print('46. Создание Set:');
  Set<int> numbers46 = {1, 2, 3, 4, 5};
  print('   Уникальные элементы: $numbers46');
  print('   Размер: ${numbers46.length}\n');

  // 47. Объединение множеств
  print('47. Объединение множеств:');
  Set<String> colors1_47 = {'red', 'green', 'blue'};
  Set<String> colors2_47 = {'blue', 'yellow', 'purple'};
  print('   Объединение: ${colors1_47.union(colors2_47)}\n');

  // 48. Пересечение множеств
  print('48. Пересечение множеств:');
  Set<int> set1_48 = {1, 2, 3, 4, 5};
  Set<int> set2_48 = {4, 5, 6, 7, 8};
  print('   Пересечение: ${set1_48.intersection(set2_48)}\n');

  // 49. Разность множеств
  print('49. Разность множеств:');
  Set<String> fruits1_49 = {'apple', 'banana', 'cherry'};
  Set<String> fruits2_49 = {'banana', 'date'};
  print('   Разность: ${fruits1_49.difference(fruits2_49)}\n');

  // 50. Комбинированная работа с коллекциями
  print('50. Комбинированная работа:');
  List<Map<String, dynamic>> students50 = [
    {'name': 'Иван', 'grade': 85},
    {'name': 'Мария', 'grade': 92},
    {'name': 'Петр', 'grade': 78},
    {'name': 'Анна', 'grade': 88}
  ];
  var filtered50 = students50.where((s) => s['grade'] > 80).toList();
  filtered50.sort((a, b) => (b['grade'] as int).compareTo(a['grade'] as int));
  print('   Студенты с оценкой >80 (отсортированы по убыванию):');
  for (var student in filtered50) {
    print('     ${student['name']}: ${student['grade']}');
  }
  print('');
}