import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorRouteScreen extends StatelessWidget {
  const ErrorRouteScreen({super.key, required this.exception});
  final GoException? exception;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
