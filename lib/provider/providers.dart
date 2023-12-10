import 'package:app/viewmodels/auth/sign_in_viewmodel.dart';
import 'package:app/viewmodels/auth/sign_up_viewmodel.dart';
import 'package:app/viewmodels/global_viewmodel.dart';
import 'package:app/viewmodels/profile/edit_profile_viewmodel.dart';
import 'package:app/viewmodels/profile/profile_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart' show SingleChildWidget;

final List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => GlobalViewModel()),
  // Auth
  ChangeNotifierProvider(create: (_) => SignInViewModel()),
  ChangeNotifierProvider(create: (_) => SignUpViewModel()),
  // Profile
  ChangeNotifierProvider(create: (_) => ProfileViewModel()),
  ChangeNotifierProvider(create: (_) => EditProfileViewModel()),
];
