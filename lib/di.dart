import 'package:flutter_arch/helpers/dimension_helper.dart';
import 'package:flutter_arch/helpers/profile_helper.dart';
import 'package:flutter_arch/implementations/http_module.dart';
import 'package:flutter_arch/interceptors/api_interceptor.dart';
import 'package:flutter_arch/libraries/app_updater.dart';
import 'package:flutter_arch/libraries/device_info.dart';
import 'package:flutter_arch/libraries/file_compresser.dart';
import 'package:flutter_arch/libraries/flashbars.dart';
import 'package:flutter_arch/libraries/formatters.dart';
import 'package:flutter_arch/libraries/image_croppers.dart';
import 'package:flutter_arch/libraries/image_pickers.dart';
import 'package:flutter_arch/libraries/loacl_storage.dart';
import 'package:flutter_arch/libraries/toasts_popups.dart';
import 'package:flutter_arch/repositories/auth_repo.dart';
import 'package:flutter_arch/services/app_api_status.dart';
import 'package:flutter_arch/services/auth_service.dart';
import 'package:flutter_arch/services/device_service.dart';
import 'package:flutter_arch/services/image_service.dart';
import 'package:flutter_arch/services/routes.dart';
import 'package:flutter_arch/services/storage_service.dart';
import 'package:flutter_arch/services/validators.dart';
import 'package:flutter_arch/utils/api_url.dart';
import 'package:flutter_arch/utils/reg_exps.dart';
import 'package:flutter_arch/utils/text_styles.dart';
import 'package:flutter_arch/utils/transitions.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// Helpers
  sl.registerLazySingleton<DimensionHelper>(DimensionHelper.new);
  sl.registerLazySingleton<ProfileHelper>(ProfileHelper.new);

  /// Implementations
  // HTTP Module
  /// Interceptors
  sl.registerLazySingleton<ApiInterceptor>(HttpModule.new);

  /// Libraries
  sl.registerLazySingleton<AppUpdater>(AppUpdater.new);
  sl.registerLazySingleton<DeviceInformation>(DeviceInformation.new);
  sl.registerLazySingleton<FileCompressor>(FileCompressor.new);
  sl.registerLazySingleton<FlashBars>(FlashBars.new);
  sl.registerLazySingleton<Formatters>(Formatters.new);
  sl.registerLazySingleton<ImageCroppers>(ImageCroppers.new);
  sl.registerLazySingleton<ImagePickers>(ImagePickers.new);
  // sl.registerLazySingleton<Launchers>(Launchers.new);
  sl.registerLazySingleton<LocalStorage>(LocalStorage.new);
  // sl.registerLazySingleton<Locations>(Locations.new);
  sl.registerLazySingleton<ToastPopup>(ToastPopup.new);

  /// PROVIDERS
  // sl.registerFactory(() => GlobalViewModel());

  /// Repositories
  sl.registerLazySingleton<AuthRepository>(AuthRepository.new);

  /// Services
  // Always Active Services
  sl.registerFactory(Routes.new);
  // sl.registerFactory(NotificationService.new);
  // Lazy Services
  sl.registerLazySingleton<AppApiStatus>(AppApiStatus.new);
  sl.registerLazySingleton<AuthService>(AuthService.new);
  sl.registerLazySingleton<DeviceService>(DeviceService.new);
  sl.registerLazySingleton<ImageService>(ImageService.new);
  sl.registerLazySingleton<StorageService>(StorageService.new);
  sl.registerLazySingleton<Validators>(Validators.new);

  /// Utils
  sl.registerLazySingleton<ApiUrl>(ApiUrl.new);
  sl.registerLazySingleton<RegExps>(RegExps.new);
  sl.registerLazySingleton<TextStyles>(TextStyles.new);
  sl.registerLazySingleton<Transitions>(Transitions.new);
}
