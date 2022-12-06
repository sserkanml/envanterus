import 'package:envanterus/core/constant/path_constant.dart';
import 'package:envanterus/core/view/error.dart';
import 'package:envanterus/feature/authentication/view/login_view.dart';
import 'package:envanterus/feature/authentication/view/signup_view.dart';
import 'package:envanterus/feature/notification/view/notifcation_view.dart';
import 'package:envanterus/feature/root/view/create_file_view.dart';
import 'package:envanterus/feature/root/view/create_folder_view.dart';
import 'package:envanterus/feature/root/view/dashboard_view.dart';
import 'package:envanterus/feature/root/view/home_view.dart';
import 'package:envanterus/feature/root/view/inventory_summary_view.dart';
import 'package:envanterus/feature/root/view/items_search_view.dart';
import 'package:envanterus/feature/root/view/items_view.dart';
import 'package:envanterus/feature/root/view/low_stock_view.dart';
import 'package:envanterus/feature/root/view/move_summary_view.dart';
import 'package:envanterus/feature/root/view/qty_view.dart';
import 'package:envanterus/feature/root/view/transaction_report_view.dart';
import 'package:envanterus/feature/search/view/search_view.dart';
import 'package:envanterus/feature/settings/view/activity_history_view.dart';
import 'package:envanterus/feature/settings/view/bulk_import_view.dart';
import 'package:envanterus/feature/settings/view/company_detail_view.dart';
import 'package:envanterus/feature/settings/view/custom_field_view.dart';
import 'package:envanterus/feature/settings/view/help_support_view.dart';
import 'package:envanterus/feature/settings/view/inside_settings_view.dart';
import 'package:envanterus/feature/settings/view/manage_tag_view.dart';
import 'package:envanterus/feature/settings/view/preferences_view.dart';
import 'package:envanterus/feature/settings/view/report_view.dart';
import 'package:envanterus/feature/settings/view/set_password_view.dart';
import 'package:envanterus/feature/settings/view/settings_view.dart';
import 'package:envanterus/feature/settings/view/sync_inventory_view.dart';
import 'package:envanterus/feature/settings/view/user_profile_view.dart';
import 'package:envanterus/feature/start/view/onboard_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/widgets.dart';

class NavigatorKeyService {
  static final GlobalKey<NavigatorState> _rootKey = GlobalKey(
    debugLabel: "root",
  );
  final GlobalKey<NavigatorState> _shellKey = GlobalKey(debugLabel: "shell");
}

class RouteGenerator {
  final _router = GoRouter(
    restorationScopeId: "restore",
    initialLocation: "/onboard",
    navigatorKey: NavigatorKeyService._rootKey,
    errorBuilder: (context, state) {
      return const ErrorView();
    },
    routes: [
      ShellRoute(
        navigatorKey: NavigatorKeyService()._shellKey,
        builder: (context, state, child) {
          return HomeView(child: child);
        },
        routes: [
          GoRoute(
              path: PathConstant.dashboard.value,
              routes: [
                GoRoute(
                    path: PathConstant.lowStock.value,
                    parentNavigatorKey: NavigatorKeyService._rootKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        transitionDuration: const Duration(milliseconds: 500),
                        child: const LowStockView(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return Stack(
                            children: <Widget>[
                              SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(0.0, 0.0),
                                  end: const Offset(-1.0, 0.0),
                                ).animate(animation),
                                child: const DashboardView(),
                              ),
                              SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(1.0, 0.0),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              )
                            ],
                          );
                        },
                      );
                    },
                    name: PathConstant.lowStock.name),
                GoRoute(
                    path: PathConstant.transactionReport.value,
                    parentNavigatorKey: NavigatorKeyService._rootKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        transitionDuration: const Duration(milliseconds: 500),
                        child: const TransactionReportView(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return Stack(
                            children: <Widget>[
                              SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(0.0, 0.0),
                                  end: const Offset(-1.0, 0.0),
                                ).animate(animation),
                                child: const DashboardView(),
                              ),
                              SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(1.0, 0.0),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              )
                            ],
                          );
                        },
                      );
                    },
                    name: PathConstant.transactionReport.name),
                GoRoute(
                    path: PathConstant.moveSummary.value,
                    parentNavigatorKey: NavigatorKeyService._rootKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        transitionDuration: const Duration(milliseconds: 500),
                        child: const MoveSummaryView(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return Stack(
                            children: <Widget>[
                              SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(0.0, 0.0),
                                  end: const Offset(-1.0, 0.0),
                                ).animate(animation),
                                child: const DashboardView(),
                              ),
                              SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(1.0, 0.0),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              )
                            ],
                          );
                        },
                      );
                    },
                    name: PathConstant.moveSummary.name),
                GoRoute(
                    path: PathConstant.qtyChanges.value,
                    parentNavigatorKey: NavigatorKeyService._rootKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        transitionDuration: const Duration(milliseconds: 500),
                        child: const QtyView(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return Stack(
                            children: <Widget>[
                              SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(0.0, 0.0),
                                  end: const Offset(-1.0, 0.0),
                                ).animate(animation),
                                child: const DashboardView(),
                              ),
                              SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(1.0, 0.0),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              )
                            ],
                          );
                        },
                      );
                    },
                    name: PathConstant.qtyChanges.name),
                GoRoute(
                    path: PathConstant.inventorySummary.value,
                    parentNavigatorKey: NavigatorKeyService._rootKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        transitionDuration: const Duration(milliseconds: 500),
                        child: const InventorySummaryView(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return Stack(
                            children: <Widget>[
                              SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(0.0, 0.0),
                                  end: const Offset(-1.0, 0.0),
                                ).animate(animation),
                                child: const DashboardView(),
                              ),
                              SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(1.0, 0.0),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              )
                            ],
                          );
                        },
                      );
                    },
                    name: PathConstant.inventorySummary.name),
              ],
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
              routes: [
                GoRoute(
                    parentNavigatorKey: NavigatorKeyService._rootKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        transitionDuration: const Duration(milliseconds: 400),
                        child: const CreateFileView(),
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
                    path: PathConstant.createFile.value,
                    name: PathConstant.createFile.name),
                GoRoute(
                    parentNavigatorKey: NavigatorKeyService._rootKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        transitionDuration: const Duration(milliseconds: 400),
                        child: const CreateFolderView(),
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
                    path: PathConstant.createFolder.value,
                    name: PathConstant.createFolder.name),
                GoRoute(
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        transitionDuration: const Duration(milliseconds: 0),
                        child: const ItemsSearchView(),
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
                    path: PathConstant.itemsSearch.value,
                    name: PathConstant.itemsSearch.name),
              ],
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
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionDuration: const Duration(milliseconds: 0),
                child: const SettingsView(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity:
                        CurveTween(curve: Curves.easeInOut).animate(animation),
                    child: child,
                  );
                },
              );
            },
            path: PathConstant.settings.value,
            name: PathConstant.settings.name,
            routes: [
              GoRoute(
                  parentNavigatorKey: NavigatorKeyService._rootKey,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      transitionDuration: const Duration(milliseconds: 500),
                      child: const ActivityHistoryView(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return Stack(
                          children: <Widget>[
                            SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(0.0, 0.0),
                                end: const Offset(-1.0, 0.0),
                              ).animate(animation),
                              child: const SettingsView(),
                            ),
                            SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1.0, 0.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            )
                          ],
                        );
                      },
                    );
                  },
                  path: PathConstant.activityHistory.value,
                  name: PathConstant.activityHistory.name),
              GoRoute(
                  parentNavigatorKey: NavigatorKeyService._rootKey,
                  routes: [
                    GoRoute(
                        parentNavigatorKey: NavigatorKeyService._rootKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            transitionDuration:
                                const Duration(milliseconds: 500),
                            child: const SetPasswordView(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(0, 1),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              );
                            },
                          );
                        },
                        path: PathConstant.setPassword.value,
                        name: PathConstant.setPassword.name),
                  ],
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      transitionDuration: const Duration(milliseconds: 500),
                      child: const UserProfileView(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return Stack(
                          children: <Widget>[
                            SlideTransition(
                              key: state.pageKey,
                              position: Tween<Offset>(
                                begin: const Offset(0.0, 0.0),
                                end: const Offset(-1.0, 0.0),
                              ).animate(animation),
                              child: const SettingsView(),
                            ),
                            SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1.0, 0.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            )
                          ],
                        );
                      },
                    );
                  },
                  path: PathConstant.userProfile.value,
                  name: PathConstant.userProfile.name),
              GoRoute(
                  parentNavigatorKey: NavigatorKeyService._rootKey,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      transitionDuration: const Duration(milliseconds: 500),
                      child: const ReportView(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return Stack(
                          children: <Widget>[
                            SlideTransition(
                              key: state.pageKey,
                              position: Tween<Offset>(
                                begin: const Offset(0.0, 0.0),
                                end: const Offset(-1.0, 0.0),
                              ).animate(animation),
                              child: const SettingsView(),
                            ),
                            SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1.0, 0.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            )
                          ],
                        );
                      },
                    );
                  },
                  path: PathConstant.report.value,
                  name: PathConstant.report.name),
              GoRoute(
                  routes: [
                    GoRoute(
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            transitionDuration:
                                const Duration(milliseconds: 500),
                            child: const PreferencesView(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return Stack(
                                children: <Widget>[
                                  SlideTransition(
                                    key: state.pageKey,
                                    position: Tween<Offset>(
                                      begin: const Offset(0.0, 0.0),
                                      end: const Offset(-1.0, 0.0),
                                    ).animate(animation),
                                    child: const InsideSettingsView(),
                                  ),
                                  SlideTransition(
                                    position: Tween<Offset>(
                                      begin: const Offset(1.0, 0.0),
                                      end: Offset.zero,
                                    ).animate(animation),
                                    child: child,
                                  )
                                ],
                              );
                            },
                          );
                        },
                        path: PathConstant.preferences.value,
                        name: PathConstant.preferences.name),
                    GoRoute(
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            transitionDuration:
                                const Duration(milliseconds: 500),
                            child: const ManageTagView(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return Stack(
                                children: <Widget>[
                                  SlideTransition(
                                    key: state.pageKey,
                                    position: Tween<Offset>(
                                      begin: const Offset(0.0, 0.0),
                                      end: const Offset(-1.0, 0.0),
                                    ).animate(animation),
                                    child: const InsideSettingsView(),
                                  ),
                                  SlideTransition(
                                    position: Tween<Offset>(
                                      begin: const Offset(1.0, 0.0),
                                      end: Offset.zero,
                                    ).animate(animation),
                                    child: child,
                                  )
                                ],
                              );
                            },
                          );
                        },
                        path: PathConstant.manageTag.value,
                        name: PathConstant.manageTag.name),
                    GoRoute(
                        parentNavigatorKey: NavigatorKeyService._rootKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            transitionDuration:
                                const Duration(milliseconds: 500),
                            child: const CustomFieldView(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return Stack(
                                children: <Widget>[
                                  SlideTransition(
                                    key: state.pageKey,
                                    position: Tween<Offset>(
                                      begin: const Offset(0.0, 0.0),
                                      end: const Offset(-1.0, 0.0),
                                    ).animate(animation),
                                    child: const InsideSettingsView(),
                                  ),
                                  SlideTransition(
                                    position: Tween<Offset>(
                                      begin: const Offset(1.0, 0.0),
                                      end: Offset.zero,
                                    ).animate(animation),
                                    child: child,
                                  )
                                ],
                              );
                            },
                          );
                        },
                        path: PathConstant.customField.value,
                        name: PathConstant.customField.name),
                    GoRoute(
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            transitionDuration:
                                const Duration(milliseconds: 500),
                            child: const SyncInventoryView(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return Stack(
                                children: <Widget>[
                                  SlideTransition(
                                    key: state.pageKey,
                                    position: Tween<Offset>(
                                      begin: const Offset(0.0, 0.0),
                                      end: const Offset(-1.0, 0.0),
                                    ).animate(animation),
                                    child: const InsideSettingsView(),
                                  ),
                                  SlideTransition(
                                    position: Tween<Offset>(
                                      begin: const Offset(1.0, 0.0),
                                      end: Offset.zero,
                                    ).animate(animation),
                                    child: child,
                                  )
                                ],
                              );
                            },
                          );
                        },
                        path: PathConstant.sync.value,
                        name: PathConstant.sync.name),
                  ],
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      transitionDuration: const Duration(milliseconds: 500),
                      child: const InsideSettingsView(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return Stack(
                          children: <Widget>[
                            SlideTransition(
                              key: state.pageKey,
                              position: Tween<Offset>(
                                begin: const Offset(0.0, 0.0),
                                end: const Offset(-1.0, 0.0),
                              ).animate(animation),
                              child: const SettingsView(),
                            ),
                            SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1.0, 0.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            )
                          ],
                        );
                      },
                    );
                  },
                  path: PathConstant.insideSettings.value,
                  name: PathConstant.insideSettings.name),
              GoRoute(
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      transitionDuration: const Duration(milliseconds: 500),
                      child: const HelpSupportView(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return Stack(
                          children: <Widget>[
                            SlideTransition(
                              key: state.pageKey,
                              position: Tween<Offset>(
                                begin: const Offset(0.0, 0.0),
                                end: const Offset(-1.0, 0.0),
                              ).animate(animation),
                              child: const SettingsView(),
                            ),
                            SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1.0, 0.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            )
                          ],
                        );
                      },
                    );
                  },
                  path: PathConstant.helpSupport.value,
                  name: PathConstant.helpSupport.name),
              GoRoute(
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      transitionDuration: const Duration(milliseconds: 500),
                      child: const CompanyDetailView(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return Stack(
                          children: <Widget>[
                            SlideTransition(
                              key: state.pageKey,
                              position: Tween<Offset>(
                                begin: const Offset(0.0, 0.0),
                                end: const Offset(-1.0, 0.0),
                              ).animate(animation),
                              child: const SettingsView(),
                            ),
                            SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1.0, 0.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            )
                          ],
                        );
                      },
                    );
                  },
                  path: PathConstant.companyDetail.value,
                  name: PathConstant.companyDetail.name),
              GoRoute(
                  parentNavigatorKey: NavigatorKeyService._rootKey,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      transitionDuration: const Duration(milliseconds: 0),
                      child: const BulkImportView(),
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
                  path: PathConstant.bulkImport.value,
                  name: PathConstant.bulkImport.name),
            ],
          ),
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

  GoRouter getRouter() {
    return _router;
  }
}
