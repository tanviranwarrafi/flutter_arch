import 'package:flutter/material.dart';
import 'package:flutter_arch/components/app_loaders/screen_loader.dart';
import 'package:flutter_arch/constants/colors.dart';
import 'package:flutter_arch/core_widgets/input_field.dart';
import 'package:flutter_arch/di.dart';
import 'package:flutter_arch/utils/size_config.dart';
import 'package:flutter_arch/utils/text_styles.dart';
import 'package:flutter_arch/viewmodels/auth/sign_in_viewmodel.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var viewModel = SignInViewModel();
  var modelData = SignInViewModel();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => viewModel.initViewModel());
    super.initState();
  }

  @override
  void didChangeDependencies() {
    SizeConfig.initMediaQuery(context);
    viewModel = Provider.of<SignInViewModel>(context, listen: false);
    modelData = Provider.of<SignInViewModel>(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    viewModel.disposeViewModel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: SizeConfig.width,
        height: SizeConfig.height,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Stack(children: [_screenVIew(context), if (modelData.loader) ScreenLoader()]),
      ),
    );
  }

  Widget _screenVIew(BuildContext context) {
    var size = const Size(double.infinity, 48);
    // var visibilityIcon = modelData.obscureText ? Assets.visibilityOnOutline : Assets.visibilityOffOutline;
    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('Log in', style: sl<TextStyles>().text26_600(primary)),
          const SizedBox(height: 06),
          Text('Let’s login and get updated', style: sl<TextStyles>().text16_400(grey)),
          const SizedBox(height: 40),
          Text('Your Email', style: sl<TextStyles>().text16_700(grey)),
          const SizedBox(height: 10),
          InputField(
            controller: viewModel.email,
            hintText: 'johndoe@gmail.com',
            keyboardType: TextInputType.emailAddress,
            onChanged: (data) => setState(() {}),
            // validator: (data) => sl<Validators>().email(data: data!),
            // suffixIcon: SuffixBox(icon: Assets.emailOutline, color: grey),
          ),
          const SizedBox(height: 20),
          Text('Password', style: sl<TextStyles>().text16_700(grey)),
          const SizedBox(height: 10),
          InputField(
            hintText: 'xxxxxx',
            controller: viewModel.password,
            obscureText: modelData.obscureText,
            onChanged: (data) => setState(() {}),
            keyboardType: TextInputType.visiblePassword,
            // validator: (val) => sl<Validators>().password(data: val!),
            // suffixIcon: SuffixBox(onTap: () => viewModel.changeVisibility(), icon: visibilityIcon, color: grey2),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Sign In'),
            style: ElevatedButton.styleFrom(maximumSize: size, minimumSize: size),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
