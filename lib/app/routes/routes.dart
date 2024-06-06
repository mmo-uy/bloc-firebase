import 'package:flutter/widgets.dart';
import 'package:bloc_firebase_auth/app/app.dart';
import 'package:bloc_firebase_auth/home/home.dart';
import 'package:bloc_firebase_auth/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
