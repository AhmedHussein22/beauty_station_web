// import 'package:flutter/material.dart';
// import 'package:rakeez/config/routing/routes.dart';
// import 'package:rakeez/features/login/view/login_view.dart';
// import 'package:rakeez/features/on_boarding/on_boarding_view.dart';


// class AppRouter {
//   Route generateRoute(RouteSettings settings) {
//     //this arguments to be passed in any screen like this ( arguments as ClassName )
//     //final arguments = settings.arguments;

//     switch (settings.name) {
//       case Routes.onBoardingScreen:
//         return MaterialPageRoute(
//           builder: (_) => const OnboardingScreen(),
//         );
//       case Routes.loginScreen:
//         return MaterialPageRoute(
//           builder: (_) => const LoginScreen(),
//         );
//       default:
//         return MaterialPageRoute(
//           builder: (_) => Scaffold(
//             body: Center(
//               child: Text('No route defined for ${settings.name}'),
//             ),
//           ),
//         );
//     }
//   }
// }