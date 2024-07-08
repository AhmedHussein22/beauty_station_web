// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rakeez/resource/color_manager.dart';

// class CustomBody extends StatelessWidget {
//   final Widget body;
//   final Widget? appBar;

//   const CustomBody({super.key, required this.body, this.appBar});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorManager.background,
//       appBar: PreferredSize(
//         preferredSize: 1.sw > 600 ? const Size.fromHeight(80) : AppBar().preferredSize,
//         child: appBar ?? const SizedBox.shrink(),
//       ),
//       body: SingleChildScrollView(
//         child: body,
//       ),
//     );
//   }
// }
