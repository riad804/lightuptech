import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/data/user/user_api.dart';
import 'app/data/user/user_repository.dart';
import 'core/services/connect_service.dart';
import 'core/services/connectivity_service.dart';

class MainBindings implements Bindings {
  @override
  void dependencies() async {
    /// services
    Get.put<GetStorage>(GetStorage(), permanent: true);
    await Get.putAsync(() => ConnectivityService().init());
    Get.put<GetConnect>(ConnectService(Get.find<GetStorage>()), permanent: true);

    Get.lazyPut<UserApi>(() => UserApi(Get.find<GetConnect>()));
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl(Get.find<UserApi>()));
  }
}
