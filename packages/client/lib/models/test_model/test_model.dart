import 'package:generators/annotations.dart';

part 'test_model.g.dart';

@copyWith
class TestModel {
  final String name;
  final int age;
  final List<String> something;
  final Map<String, int> test;

  TestModel({this.name, this.age, this.something, this.test});
}
