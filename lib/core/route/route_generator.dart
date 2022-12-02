import 'package:envanterus/core/constant/path_constant.dart';
import 'package:envanterus/core/view/error.dart';
import 'package:envanterus/feature/authentication/view/login_view.dart';
import 'package:envanterus/feature/authentication/view/signup_view.dart';
import 'package:envanterus/feature/start/view/onboard_view.dart';
import 'package:go_router/go_router.dart';

class RouteGenerator {
  GoRouter getRouter() {
    return GoRouter(
      initialLocation: "/onboard",
      errorBuilder: (context, state) {
        return const ErrorView();
      },
      routes: [
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
