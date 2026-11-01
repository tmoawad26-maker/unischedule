import 'package:go_router/go_router.dart';
import 'package:unischedule/core/routing/routes.dart';
import 'package:unischedule/features/home/presentation/views/screens/home_screen.dart';
import 'package:unischedule/features/main/presentation/views/screens/main_layout_screen.dart';
import 'package:unischedule/features/onboarding/presentation/views/screens/onboarding_screen.dart';
import 'package:unischedule/features/schedule/presentation/views/screens/schedule_screen.dart';
import 'package:unischedule/features/sign_in/presentation/views/screens/forget_password_screen.dart';
import 'package:unischedule/features/sign_in/presentation/views/screens/sign_in_screen.dart';
import 'package:unischedule/features/splash/presentation/views/screens/splash_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: Routes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: Routes.onBoarding,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: Routes.signIn,
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: Routes.forgetPassword,
      builder: (context, state) => const ForgetPasswordScreen(),
    ),
    GoRoute(
      path: Routes.mainLayout,
      builder: (context, state) => const MainLayoutScreen(),
    ),
    GoRoute(path: Routes.home, builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: Routes.schedule,
      builder: (context, state) => const  ScheduleScreen(),
    ),
  ],
);
