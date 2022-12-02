import 'package:envanterus/core/constant/navigator_key.dart';
import 'package:envanterus/core/constant/path_constant.dart';
import 'package:envanterus/core/view/error.dart';
import 'package:envanterus/feature/authentication/view/login_view.dart';
import 'package:envanterus/feature/authentication/view/signup_view.dart';
import 'package:envanterus/feature/notification/view/notifcation_view.dart';
import 'package:envanterus/feature/root/view/dashboard_view.dart';
import 'package:envanterus/feature/root/view/home_view.dart';
import 'package:envanterus/feature/root/view/items_view.dart';
import 'package:envanterus/feature/search/view/search_view.dart';
import 'package:envanterus/feature/settings/view/settings_view.dart';
import 'package:envanterus/feature/start/view/onboard_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteGenerator {
  GoRouter getRouter() {
    return GoRouter(
      navigatorKey: NavigatorKeyService.rootKey,
      initialLocation: "/dashboard",
      errorBuilder: (context, state) {
        return const ErrorView();
      },
      routes: [
        ShellRoute(
          navigatorKey: NavigatorKeyService.shellKey,
          routes: [
            GoRoute(
                path: PathConstant.dashboard.value,
                pageBuilder: (context, state) {
                  return CustomTransitionPage(
                    transitionDuration: const Duration(milliseconds: 0),
                    child: const DashboardView(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurveTween(curve: Curves.easeInOut)
                            .animate(animation),
                        child: child,
                      );
                    },
                  );
                },
                name: PathConstant.dashboard.name),
            GoRoute(
                path: PathConstant.items.value,
                pageBuilder: (context, state) {
                  return CustomTransitionPage(
                    transitionDuration: const Duration(milliseconds: 0),
                    child: const ItemsView(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurveTween(curve: Curves.easeInOut)
                            .animate(animation),
                        child: child,
                      );
                    },
                  );
                },
                name: PathConstant.items.name),
            GoRoute(
                path: PathConstant.settings.value,
                 pageBuilder: (context, state) {
                  return CustomTransitionPage(
                    transitionDuration: const Duration(milliseconds: 0),
                    child: const SettingsView(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurveTween(curve: Curves.easeInOut)
                            .animate(animation),
                        child: child,
                      );
                    },
                  );
                },
                name: PathConstant.settings.name),
            GoRoute(
                path: PathConstant.search.value,
                pageBuilder: (context, state) {
                  return CustomTransitionPage(
                    transitionDuration: const Duration(milliseconds: 0),
                    child: const SearchView(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurveTween(curve: Curves.easeInOut)
                            .animate(animation),
                        child: child,
                      );
                    },
                  );
                },
                name: PathConstant.search.name),
            GoRoute(
                path: PathConstant.notifications.value,
                pageBuilder: (context, state) {
                  return CustomTransitionPage(
                    transitionDuration: const Duration(milliseconds: 0),
                    child: const NotifcationView(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurveTween(curve: Curves.easeInOut)
                            .animate(animation),
                        child: child,
                      );
                    },
                  );
                },
                name: PathConstant.notifications.name),
          ],
          builder: (context, state, child) {
            return HomeView(child: child);
          },
        ),
        GoRoute(
          path: PathConstant.login.value,
          name: PathConstant.login.name,
          builder: (context, state) {
            return const LoginView();
          },
        ),
        GoRoute(
          path: PathConstant.onboard.value,
          name: PathConstant.onboard.name,
          builder: (context, state) {
            return const OnboardView();
          },
        ),
        GoRoute(
          path: PathConstant.signup.value,
          name: PathConstant.signup.name,
          builder: (context, state) {
            return const SignupView();
          },
        ),
      ],
    );
  }
}
