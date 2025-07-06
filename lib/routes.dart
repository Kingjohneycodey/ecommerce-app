import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'features/auth/presentation/pages/sign_in_page.dart';

final GoRouter router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => const SignInPage())],
);
