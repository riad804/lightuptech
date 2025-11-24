import 'package:get/get.dart';

class UserApi {
  final GetConnect _connect;
  UserApi(this._connect);

  Future<Response> getUsers() => _connect.get("/users");
}
