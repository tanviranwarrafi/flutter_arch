import 'package:app/helpers/dimension_helper.dart';
import 'package:app/helpers/profile_helper.dart';
import 'package:app/implementations/http_module.dart';
import 'package:app/interceptors/api_interceptor.dart';
import 'package:app/libraries/app_updater.dart';
import 'package:app/libraries/device_info.dart';
import 'package:app/libraries/file_compresser.dart';
import 'package:app/libraries/flashbars.dart';
import 'package:app/libraries/formatters.dart';
import 'package:app/libraries/image_croppers.dart';
import 'package:app/libraries/image_pickers.dart';
import 'package:app/libraries/loacl_storage.dart';
import 'package:app/libraries/toasts_popups.dart';
import 'package:app/repositories/auth_repo.dart';
import 'package:app/services/app_api_status.dart';
import 'package:app/services/auth_service.dart';
import 'package:app/services/device_service.dart';
import 'package:app/services/image_service.dart';
import 'package:app/services/routes.dart';
import 'package:app/services/storage_service.dart';
import 'package:app/services/validators.dart';
import 'package:app/utils/api_url.dart';
import 'package:app/utils/reg_exps.dart';
import 'package:app/utils/text_styles.dart';
import 'package:app/utils/transitions.dart';
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
