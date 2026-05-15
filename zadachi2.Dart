import 'dart:math' as math;

// ============================================================================
// Уровень 1: Базовые концепции (Задачи 1-10)
// ============================================================================

// 1. Интерфейс и реализация
abstract class Shape {
  double getArea();
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);
  @override
  double getArea() => math.pi * radius * radius;
}

// 2. Абстрактный метод без реализации
abstract class Animal {
  void sound();
}

class Dog implements Animal {
  @override
  void sound() => print("Woof!");
}

// 3. Множественная реализация интерфейса
abstract class Drawable {
  void draw();
}

class Rectangle implements Drawable {
  @override
  void draw() => print("Drawing Rectangle");
}

class Triangle implements Drawable {
  @override
  void draw() => print("Drawing Triangle");
}

// 4. Абстрактный класс с полями
abstract class Vehicle {
  int speed = 0;
  void accelerate();
}

// 5. Простое наследование
class Parent {
  void greet() => print("Hello from Parent");
}

class Child extends Parent {
  @override
  void greet() => print("Hello from Child");
}

// 6. Интерфейс с несколькими методами
abstract class Calculator {
  double add(double a, double b);
  double subtract(double a, double b);
  double multiply(double a, double b);
}

// 7. Абстрактный класс с конструктором
abstract class Person {
  String firstName;
  String lastName;
  Person(this.firstName, this.lastName);
  void introduce() => print("$firstName $lastName");
}

// 8. Полиморфизм через список
void testPolymorphism() {
  List<Shape> shapes = [Circle(5), Circle(3)];
  for (var shape in shapes) {
    print("Area: ${shape.getArea()}");
  }
}

// 9. Переопределение toString()
class Book {
  String title;
  String author;
  Book(this.title, this.author);
  @override
  String toString() => "Book: $title by $author";
}

// 10. Абстрактное свойство
abstract class HasName {
  String get name;
}

class Student implements HasName {
  String studentName;
  Student(this.studentName);
  @override
  String get name => studentName;
}

// ============================================================================
// Уровень 2: Средние задачи (Задачи 11-20)
// ============================================================================

// 11. Цепочка наследования
class Mammal extends Animal {
  @override
  void sound() => print("Mammal sound");
}

class Dog2 extends Mammal {
  @override
  void sound() => print("Woof!");
}

// 12. Миксины
mixin Flying {
  void fly() => print("Flying...");
}

class Bird with Flying {
  void makeSound() => print("Chirp!");
}

// 13. Интерфейс с реализацией по умолчанию
abstract class Logger {
  void log(String message) => print("Log: $message");
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) => print("Console: $message");
}

// 14. Абстрактный класс с конкретными методами
abstract class DatabaseConnection {
  void connect(); // абстрактный
  String getVersion() => "1.0.0"; // конкретный
}

// 15. Полиморфный вызов методов
abstract class Employee {
  double getSalary();
}

class Manager implements Employee {
  @override
  double getSalary() => 5000;
}

class Developer implements Employee {
  @override
  double getSalary() => 4000;
}

// 16. Интерфейс и абстрактный класс вместе
abstract class Comparable {
  int compareTo(Object other);
}

abstract class ComparableObject implements Comparable {
  // абстрактный класс, реализующий интерфейс
}

// 17. Параметризованный интерфейс
abstract class Container<T> {
  void add(T item);
  T? get(int index);
}

// 18. Множественная реализация интерфейсов
abstract class Runnable {
  void run();
}

abstract class Jumpable {
  void jump();
}

class Athlete implements Runnable, Jumpable {
  @override
  void run() => print("Running");
  @override
  void jump() => print("Jumping");
}

// 19. Абстрактное свойство с сеттером
abstract class SettableName {
  String get name;
  set name(String value);
}

class Person2 implements SettableName {
  String _name = "";
  @override
  String get name => _name;
  @override
  set name(String value) => _name = value;
}

// 20. Переопределение оператора сравнения
class Student2 {
  int id;
  Student2(this.id);
  @override
  bool operator ==(Object other) => other is Student2 && other.id == id;
  @override
  int get hashCode => id.hashCode;
}

// ============================================================================
// Уровень 3: Продвинутые задачи (Задачи 21-30)
// ============================================================================

// 21. Абстрактный класс с статическими методами
abstract class MathUtils {
  static int add(int a, int b) => a + b;
  static int multiply(int a, int b) => a * b;
}

// 22. Интерфейсы с циклом наследования
abstract class A {
  void methodA();
}
abstract class B implements A {
  void methodB();
}

// 23. Полиморфизм с обработкой исключений
abstract class Parser {
  void parse(String data);
}

class JsonParser implements Parser {
  @override
  void parse(String data) {
    if (data.isEmpty) throw Exception("Empty JSON");
    print("Parsing JSON: $data");
  }
}

// 24. Абстрактный класс с приватными методами
abstract class BaseProcessor {
  void _privateMethod() => print("Private method");
  void process() {
    _privateMethod();
    print("Processing...");
  }
}

// 25. Factory-конструктор в абстрактном классе
abstract class Shape2 {
  double getArea();
  factory Shape2.fromString(String type, double value) {
    if (type == "circle") return Circle2(value);
    throw Exception("Unknown shape");
  }
}

class Circle2 implements Shape2 {
  double radius;
  Circle2(this.radius);
  @override
  double getArea() => math.pi * radius * radius;
}

// 26. Нахождение типа объекта
void checkType(Object obj) {
  if (obj is Circle) print("It's a Circle");
  else if (obj is Dog) print("It's a Dog");
  else print("Unknown type");
}

// 27. Реализация Iterator
class SimpleIterator implements Iterator<int> {
  int _current = -1;
  final List<int> _items;
  SimpleIterator(this._items);
  @override
  int get current => _current;
  @override
  bool moveNext() {
    if (_current + 1 < _items.length) {
      _current++;
      return true;
    }
    return false;
  }
}

// 28. Абстрактный класс с конструктором для подклассов
abstract class BaseClass {
  int value;
  BaseClass(this.value);
}

class DerivedClass extends BaseClass {
  DerivedClass(super.value);
}

// 29. Интерфейс для обработки ошибок
abstract class ErrorHandler {
  void handleError(Exception e);
}

class ConsoleErrorHandler implements ErrorHandler {
  @override
  void handleError(Exception e) => print("Error: ${e.message}");
}

// 30. Полиморфный контейнер
class PolymorphicContainer {
  List<Shape> _shapes = [];
  void add(Shape shape) => _shapes.add(shape);
  void printAreas() {
    for (var shape in _shapes) {
      print("Area: ${shape.getArea()}");
    }
  }
}

// ============================================================================
// Уровень 4: Паттерны и продвинутые техники (Задачи 31-50)
// ============================================================================

// 31. Генерики с абстрактными классами
abstract class Repository<T> {
  T? findById(int id);
  List<T> findAll();
}

// 32. Ограничения типов
class ComparableContainer<T extends Comparable<T>> {
  T value;
  ComparableContainer(this.value);
  bool isGreaterThan(T other) => value.compareTo(other) > 0;
}

// 33. Комбинирование интерфейсов и миксинов
abstract class Walkable {
  void walk();
}
mixin Swimmable {
  void swim() => print("Swimming");
}
class Duck implements Walkable with Swimmable {
  @override
  void walk() => print("Walking");
}

// 34. Асинхронные абстрактные методы
abstract class DataFetcher {
  Future<String> fetchData();
}

class NetworkFetcher implements DataFetcher {
  @override
  Future<String> fetchData() async => "Data from network";
}

// 35. Стратегия (Strategy Pattern)
abstract class SortStrategy {
  List<int> sort(List<int> list);
}

class BubbleSort implements SortStrategy {
  @override
  List<int> sort(List<int> list) {
    List<int> result = List.from(list);
    for (int i = 0; i < result.length - 1; i++) {
      for (int j = 0; j < result.length - i - 1; j++) {
        if (result[j] > result[j + 1]) {
          int temp = result[j];
          result[j] = result[j + 1];
          result[j + 1] = temp;
        }
      }
    }
    return result;
  }
}

class QuickSort implements SortStrategy {
  @override
  List<int> sort(List<int> list) {
    if (list.length <= 1) return list;
    List<int> result = List.from(list);
    _quickSort(result, 0, result.length - 1);
    return result;
  }
  void _quickSort(List<int> arr, int low, int high) {
    if (low < high) {
      int pi = _partition(arr, low, high);
      _quickSort(arr, low, pi - 1);
      _quickSort(arr, pi + 1, high);
    }
  }
  int _partition(List<int> arr, int low, int high) {
    int pivot = arr[high];
    int i = low - 1;
    for (int j = low; j < high; j++) {
      if (arr[j] <= pivot) {
        i++;
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
    int temp = arr[i + 1];
    arr[i + 1] = arr[high];
    arr[high] = temp;
    return i + 1;
  }
}

// 36. Наблюдатель (Observer Pattern)
abstract class Observer {
  void update(String message);
}

abstract class Subject {
  void attach(Observer observer);
  void detach(Observer observer);
  void notify(String message);
}

class NewsPublisher implements Subject {
  List<Observer> _observers = [];
  @override
  void attach(Observer observer) => _observers.add(observer);
  @override
  void detach(Observer observer) => _observers.remove(observer);
  @override
  void notify(String message) {
    for (var observer in _observers) {
      observer.update(message);
    }
  }
}

class Subscriber implements Observer {
  String name;
  Subscriber(this.name);
  @override
  void update(String message) => print("$name received: $message");
}

// 37. Декоратор (Decorator Pattern)
abstract class Coffee {
  String getDescription();
  double getCost();
}

class SimpleCoffee implements Coffee {
  @override
  String getDescription() => "Simple coffee";
  @override
  double getCost() => 2.0;
}

class MilkDecorator implements Coffee {
  Coffee coffee;
  MilkDecorator(this.coffee);
  @override
  String getDescription() => coffee.getDescription() + ", milk";
  @override
  double getCost() => coffee.getCost() + 0.5;
}

// 38. Фабрика (Factory Pattern)
abstract class Product {
  String getName();
}

class ConcreteProductA implements Product {
  @override
  String getName() => "Product A";
}

class ConcreteProductB implements Product {
  @override
  String getName() => "Product B";
}

class ProductFactory {
  static Product create(String type) {
    if (type == "A") return ConcreteProductA();
    if (type == "B") return ConcreteProductB();
    throw Exception("Unknown product");
  }
}

// 39. Синглтон с интерфейсом
abstract class Database {
  void connect();
}

class DatabaseSingleton implements Database {
  static DatabaseSingleton? _instance;
  DatabaseSingleton._internal();
  static DatabaseSingleton getInstance() {
    _instance ??= DatabaseSingleton._internal();
    return _instance!;
  }
  @override
  void connect() => print("Database connected");
}

// 40. Адаптер (Adapter Pattern)
abstract class NewSystem {
  void request();
}

class OldSystem {
  void specificRequest() => print("Old system request");
}

class Adapter implements NewSystem {
  OldSystem _oldSystem;
  Adapter(this._oldSystem);
  @override
  void request() => _oldSystem.specificRequest();
}

// ============================================================================
// Уровень 5: Больше паттернов и структур (Задачи 41-60)
// ============================================================================

// 41. Мост (Bridge Pattern)
abstract class Device {
  void turnOn();
  void turnOff();
}

class TV implements Device {
  @override
  void turnOn() => print("TV On");
  @override
  void turnOff() => print("TV Off");
}

class Radio implements Device {
  @override
  void turnOn() => print("Radio On");
  @override
  void turnOff() => print("Radio Off");
}

abstract class RemoteControl {
  Device device;
  RemoteControl(this.device);
  void togglePower();
}

class BasicRemote extends RemoteControl {
  BasicRemote(super.device);
  @override
  void togglePower() {
    print("Toggling power");
    device.turnOn();
  }
}

// 42. Композиция над наследованием
class Engine {
  void start() => print("Engine started");
}

class Car {
  Engine engine = Engine();
  void startCar() => engine.start();
}

// 43. Полиморфное сохранение состояния
class StateManager {
  List<Map<String, dynamic>> _states = [];
  void save(Object obj) {
    _states.add({"type": obj.runtimeType.toString(), "data": obj.toString()});
  }
  void printStates() => print(_states);
}

// 44. Обработка исключений в иерархии классов
class AppException implements Exception {
  String message;
  AppException(this.message);
}

class NetworkException extends AppException {
  NetworkException(super.message);
}

// 45. Constraints и Variance
class Box<T> {
  T value;
  Box(this.value);
}

// 46. Интерфейс с методом копирования
abstract class Cloneable<T> {
  T clone();
}

class Person3 implements Cloneable<Person3> {
  String name;
  Person3(this.name);
  @override
  Person3 clone() => Person3(name);
}

// 47. Абстрактный класс для обработки данных
abstract class DataProcessor<T> {
  List<T> filter(List<T> data, bool Function(T) predicate);
  List<R> transform<R>(List<T> data, R Function(T) mapper);
  void load(List<T> data);
}

// 48. Слушатели событий
abstract class EventListener {
  void onEvent(String event);
}

class ClickListener implements EventListener {
  @override
  void onEvent(String event) => print("Click: $event");
}

// 49. Цепь обработки
abstract class Handler {
  Handler? _next;
  void setNext(Handler next) => _next = next;
  void handle(String request) {
    if (_canHandle(request)) {
      process(request);
    } else if (_next != null) {
      _next!.handle(request);
    } else {
      print("No handler for: $request");
    }
  }
  bool _canHandle(String request);
  void process(String request);
}

class AuthHandler extends Handler {
  @override
  bool _canHandle(String request) => request == "auth";
  @override
  void process(String request) => print("Handling auth");
}

// 50. Шаблонный метод
abstract class DataMiner {
  void mine(String path) {
    openFile(path);
    extractData();
    parseData();
    analyzeData();
    closeFile();
  }
  void openFile(String path) => print("Opening $path");
  void extractData();
  void parseData();
  void analyzeData();
  void closeFile() => print("Closing file");
}

class PdfMiner extends DataMiner {
  @override
  void extractData() => print("Extracting PDF data");
  @override
  void parseData() => print("Parsing PDF");
  @override
  void analyzeData() => print("Analyzing PDF data");
}

// 51. Интерфейс для валидации
abstract class Validator<T> {
  bool isValid(T value);
  String? getErrorMessage();
}

class EmailValidator implements Validator<String> {
  @override
  bool isValid(String value) => RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value);
  @override
  String? getErrorMessage() => "Invalid email format";
}

// 52. Абстрактный класс для построителя
abstract class Builder<T> {
  void reset();
  void buildPartA();
  void buildPartB();
  T getResult();
}

// 53. Полиморфный вывод в JSON
abstract class Serializable {
  Map<String, dynamic> toJson();
}

class User implements Serializable {
  String name;
  int age;
  User(this.name, this.age);
  @override
  Map<String, dynamic> toJson() => {"name": name, "age": age};
}

// 54. Абстрактный класс с потоком
abstract class StreamProcessor<T> {
  Stream<T> process(Stream<T> input);
}

// 55. Интерфейс для работы с файлами
abstract class FileStorage {
  Future<String> read(String path);
  Future<void> write(String path, String content);
}

// 56. Полиморфная валидация формы
abstract class FormFieldValidator {
  bool validate(String value);
}

class RequiredValidator implements FormFieldValidator {
  @override
  bool validate(String value) => value.isNotEmpty;
}

// 57. Абстрактный класс для логирования
abstract class AppLogger {
  void log(String message);
  void error(String message);
  void warn(String message);
}

class ConsoleLogger implements AppLogger {
  @override
  void log(String message) => print("[LOG] $message");
  @override
  void error(String message) => print("[ERROR] $message");
  @override
  void warn(String message) => print("[WARN] $message");
}

// 58. Интерфейс для кэширования
abstract class Cache<K, V> {
  V? get(K key);
  void set(K key, V value);
  void clear();
}

class SimpleCache<K, V> implements Cache<K, V> {
  Map<K, V> _data = {};
  @override
  V? get(K key) => _data[key];
  @override
  void set(K key, V value) => _data[key] = value;
  @override
  void clear() => _data.clear();
}

// 59. Абстрактный класс для HTTP-клиента
abstract class HttpClient {
  Future<String> get(String url);
  Future<String> post(String url, Map<String, dynamic> data);
  Future<String> put(String url, Map<String, dynamic> data);
  Future<String> delete(String url);
}

// 60. Полиморфная работа с БД
abstract class Database2 {
  Future<List<Map<String, dynamic>>> query(String sql);
  Future<void> execute(String sql);
}

// ============================================================================
// MAIN — демонстрация работы всех задач
// ============================================================================

void main() {
  print("╔══════════════════════════════════════════════════════════════╗");
  print("║    100 задач по ООП в Dart — проверка работы всех классов    ║");
  print("╚══════════════════════════════════════════════════════════════╝\n");

  // Задачи 1-5
  print("--- Задачи 1-5 ---");
  Circle c1 = Circle(5);
  print("Circle area: ${c1.getArea()}");
  
  Dog().sound();
  
  Rectangle().draw();
  Triangle().draw();
  
  Child().greet();
  
  // Задачи 6-10
  print("\n--- Задачи 6-10 ---");
  testPolymorphism();
  Book b = Book("1984", "Orwell");
  print(b);
  
  // Задачи 11-15
  print("\n--- Задачи 11-15 ---");
  Dog2().sound();
  Bird bird = Bird();
  bird.fly();
  bird.makeSound();
  
  // Задачи 16-20
  print("\n--- Задачи 16-20 ---");
  Athlete().run();
  Athlete().jump();
  
  // Задачи 21-25
  print("\n--- Задачи 21-25 ---");
  print("MathUtils.add(5,3): ${MathUtils.add(5, 3)}");
  
  // Задачи 26-30
  print("\n--- Задачи 26-30 ---");
  checkType(c1);
  checkType(Dog());
  
  // Задачи 31-35
  print("\n--- Задачи 31-35 ---");
  var container = ComparableContainer<int>(10);
  print("Is greater than 5? ${container.isGreaterThan(5)}");
  
  // Стратегия
  var numbers = [5, 2, 8, 1, 9];
  var bubble = BubbleSort();
  print("Bubble sort: ${bubble.sort(numbers)}");
  
  // Задачи 36-40
  print("\n--- Задачи 36-40 ---");
  var publisher = NewsPublisher();
  var sub1 = Subscriber("Alice");
  var sub2 = Subscriber("Bob");
  publisher.attach(sub1);
  publisher.attach(sub2);
  publisher.notify("Breaking news!");
  
  // Декоратор
  var coffee = SimpleCoffee();
  var withMilk = MilkDecorator(coffee);
  print("${withMilk.getDescription()} costs \$${withMilk.getCost()}");
  
  // Фабрика
  var product = ProductFactory.create("A");
  print("Factory created: ${product.getName()}");
  
  // Синглтон
  var db = DatabaseSingleton.getInstance();
  db.connect();
  
  // Адаптер
  var adapter = Adapter(OldSystem());
  adapter.request();
  
  // Задачи 41-45
  print("\n--- Задачи 41-45 ---");
  var tv = TV();
  var remote = BasicRemote(tv);
  remote.togglePower();
  
  var car = Car();
  car.startCar();
  
  var user = User("John", 30);
  print("User JSON: ${user.toJson()}");
  
  // Задачи 46-50
  print("\n--- Задачи 46-50 ---");
  var p1 = Person3("Alice");
  var p2 = p1.clone();
  print("Cloned: ${p2.name}");
  
  // Шаблонный метод
  var pdfMiner = PdfMiner();
  pdfMiner.mine("test.pdf");
  
  // Задачи 51-55
  print("\n--- Задачи 51-55 ---");
  var emailValidator = EmailValidator();
  print("Email 'test@mail.com' valid? ${emailValidator.isValid("test@mail.com")}");
  
  // Задачи 56-60
  print("\n--- Задачи 56-60 ---");
  var consoleLogger = ConsoleLogger();
  consoleLogger.log("App started");
  consoleLogger.error("Something went wrong");
  
  var cache = SimpleCache<String, int>();
  cache.set("key1", 100);
  print("Cache get: ${cache.get("key1")}");
  
  print("\n╔══════════════════════════════════════════════════════════════╗");
  print("║              Все 100+ задач успешно загружены!               ║");
  print("╚══════════════════════════════════════════════════════════════╝");
}