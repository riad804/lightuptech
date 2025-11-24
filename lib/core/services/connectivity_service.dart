import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'dart:io';

class ConnectivityService extends GetxService {
  final isOnline = false.obs;

  late StreamSubscription _subscription;

  Future<ConnectivityService> init() async {
    // Initial check
    _checkConnection();

    // Listen for future changes
    _subscription = Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> result) {
      _checkConnection();
    });

    return this;
  }

  Future<void> _checkConnection() async {
    try {
      final result = await InternetAddress.lookup("google.com")
          .timeout(const Duration(seconds: 3));

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        isOnline.value = true;
      }
    } catch (_) {
      isOnline.value = false;
    }
  }

  @override
  void onClose() {
    _subscription.cancel();
    super.onClose();
  }
}
