import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  Future<T?> pushReplacementNamed<T, TO>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed<T, TO>(routeName, arguments: arguments);
  }

  Future<T?> pushNamedAndRemoveUntil<T, TO>(String routeName, {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
