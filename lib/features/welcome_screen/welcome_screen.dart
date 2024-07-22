import 'package:beamer/beamer.dart';
import 'package:beauty_solution_web/resource/assets_manager.dart';
import 'package:beauty_solution_web/resource/color_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:beauty_solution_web/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageAssets.logo1,
              ),
              fit: BoxFit.contain,
            ),
            color: ColorManager.secondaryColor),
        child: Stack(
          children: [
            Container(
              width: 0.2.sw,
              height: 0.6.sh,
              color: ColorManager.mainColor,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Text(
                      'مرحبا بكم في بيوتي ستيشن',
                      style: TextStyle(
                        color: ColorManager.neutralWhite,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    10.verticalSpace,
                    const Text(
                      'أفضل مكان للعناية بجمالك',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorManager.neutralWhite,
                        fontSize: 14,
                      ),
                    ),
                    25.verticalSpace,
                    CustomTextField(
                        title: 'البريد الإلكتروني',
                        isRequired: true,
                        controller: emailController,
                        textColor: ColorManager.neutralWhite,
                        fillColor: ColorManager.neutralWhite,
                        validator: (value) {
                          if (value != 'admin@beautysolution.com') {
                            return 'البريد الإلكتروني غير صحيح';
                          }
                          return null;
                        }),
                    10.verticalSpace,
                    CustomTextField(
                      title: 'كلمة المرور',
                      isRequired: true,
                      controller: passwordController,
                      textColor: ColorManager.neutralWhite,
                      fillColor: ColorManager.neutralWhite,
                      obscureText: true,
                      validator: (value) {
                        if (value != '123456') {
                          return 'كلمة المرور غير صحيحة';
                        }
                        return null;
                      },
                    ),
                    25.verticalSpace,
                    ElevatedButton(
                        child: const Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            color: ColorManager.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.beamToNamed('/Home');
                          }
                        })
                  ],
                ).allPadding(20),
              ),
            ).onlyPadding(rPadding: 100)
          ],
        ),
      ),
    );
  }
}
