import 'package:app_dev_final/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod 
Future<AuthenticationService> authenticationService(AuthenticationServiceRef ref) async{
  
return AuthenticationService(FirebaseAuth.instance);
}



