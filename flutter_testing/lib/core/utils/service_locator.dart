import 'package:flutter_testing/core/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupSreviceLocator() {
    getIt.registerSingleton<CacheHelper>(CacheHelper());

}
