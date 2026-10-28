import 'package:go_router/go_router.dart';
import 'package:unischedule/core/routing/routes.dart';
import 'package:unischedule/features/home/presentation/views/screens/home_screen.dart';
import 'package:unischedule/features/onboarding/presentation/views/screens/onboarding_screen.dart';
import 'package:unischedule/features/schedule/presentation/views/screens/schedule_screen.dart';
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
      path: Routes.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: Routes.schedule,
      builder: (context, state) => const ScheduleScreen(),
    ),
  ],
);
