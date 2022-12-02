import 'package:envanterus/core/constant/path_constant.dart';
import 'package:go_router/go_router.dart';

class RouteGenerator {
  GoRouter getRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          path: PathConstant.home.value,
          name: PathConstant.home.name,
        ),
      ],
    );
  }
}
