import 'package:beamer/beamer.dart';
import 'package:beauty_solution_web/config/theme/app_theme.dart';
import 'package:beauty_solution_web/features/main_page/views/main_page.dart';
import 'package:beauty_solution_web/features/user_details/view/user_details_view.dart';
import 'package:beauty_solution_web/features/welcome_screen/welcome_screen.dart';
import 'package:beauty_solution_web/utils/app_utils/app_logs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeautyStationApp extends StatefulWidget {
  const BeautyStationApp({super.key});

  @override
  BeautyStationAppState createState() => BeautyStationAppState();
}

class BeautyStationAppState extends State<BeautyStationApp> {
  @override
  void initState() {
    super.initState();
  }

  final routerDelegate = BeamerDelegate(
      transitionDelegate: const NoAnimationTransitionDelegate(),
      beamBackTransitionDelegate: const NoAnimationTransitionDelegate(),
      initialPath: '/Login',
      buildListener: (context, beamerDelegate) async {
        AppLogs.infoLog('Beamer buildListener: ${beamerDelegate.currentPages[0].name}');
      },
      locationBuilder: RoutesLocationBuilder(routes: {
        // '/Verified': (context, state, data) {
        //   return const BeamPage(
        //     title: 'Verified',
        //     key: ValueKey('Verified'),
        //     name: 'Verified',
        //     child: VerifyScreen(),
        //   );
        // },
        // '/VerifiedBefore': (context, state, data) {
        //   return const BeamPage(
        //     title: 'VerifiedBefore',
        //     key: ValueKey('VerifiedBefore'),
        //     name: 'VerifiedBefore',
        //     child: VerifyBeforeScreen(),
        //   );
        // },
        '/Home': (context, state, data) {
          return const BeamPage(
            title: 'Home',
            key: ValueKey('home'),
            name: 'home',
            child: MainPage(),
          );
        },
        '/UserDetails/:userName': (context, state, data) {
          final userName = state.pathParameters['userName']!;
          // final info = (data as Project);
          return BeamPage(
            title: userName,
            name: userName,
            key: ValueKey('Projects_Page/$userName'),
            type: BeamPageType.scaleTransition,
            child: const UserDetailsView(),
          );
        },
        '/Login': (context, state, data) {
          return const BeamPage(
            title: 'Login',
            key: ValueKey('Login'),
            name: 'Login',
            child: WelcomeScreen(),
          );
        },
      }).call);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1600, 1200),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        //************  check the width screen */
        AppLogs.infoLog('Screen width: ${ScreenUtil().screenWidth}');
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'My Portfolio',
          locale: const Locale("ar"),
          routeInformationParser: BeamerParser(),
          routerDelegate: routerDelegate,
          backButtonDispatcher: BeamerBackButtonDispatcher(delegate: routerDelegate),
          theme: AppTheme().appLightTheme(),
        );
      },
    );
  }
}
