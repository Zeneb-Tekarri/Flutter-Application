import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingapp/core/constant/string.dart';
import 'package:onlineshoppingapp/core/routing/router.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Quick Shopping',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.splash,
      ),
    );
  }
}
