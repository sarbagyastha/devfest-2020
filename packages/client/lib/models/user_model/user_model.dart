import 'package:generators/annotations.dart';

part 'user_model.g.dart';

@copyWith
class UserModel {
  final String name;
  final int age;

  UserModel({this.name, this.age});

  @override
  String toString() => 'UserModel(name: $name, age: $age)';
}
