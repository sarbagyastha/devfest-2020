import 'package:client/models/user_model/user_model.dart';

void main() {
  final userModel = UserModel(
    age: 10,
    name: 'devfest',
  );

  print(userModel);

  print(userModel.copyWith(age: 25));
}
