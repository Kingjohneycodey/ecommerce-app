import 'package:ecommerce_app/features/auth/presentation/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/auth/presentation/pages/sign_in_page.dart';
import '../features/home/presentation/pages/home_page.dart';
import '../providers/auth_provider.dart';

String? _redirect(BuildContext context, GoRouterState state, ProviderRef ref) {
  final authState = ref.read(authStateProvider);
  if (!authState.isAuthenticated && state.uri.path != '/') {
    return '/';
  }
  return null;
}

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    redirect: (context, state) => _redirect(context, state, ref),
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SignInPage()),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
      GoRoute(path: '/signup', builder: (context, state) => const SignUpPage()),
    ],
  );
});
