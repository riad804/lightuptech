import 'package:get/get.dart';

import 'user_api.dart';
import 'user_model.dart';

abstract class UserRepository {
  RxInt getCount();
  increment();
  fetchUsers();
}

class UserRepositoryImpl implements UserRepository {
  final UserApi api;
  UserRepositoryImpl(this.api);

  final count = 0.obs;

  @override
  RxInt getCount() => count;

  @override
  increment() => count.value++;

  @override
  Future<List<UserModel>> fetchUsers() async {
    final response = await api.getUsers();

    if (!response.isOk) {
      throw Exception("Failed to fetch users: ${response.statusText}");
    }

    final List data = response.body;
    return data.map((e) => UserModel.fromJson(e)).toList();
  }
}
