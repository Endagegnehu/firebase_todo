// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'infrastructure/auth/firebase_auth_facad.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facad.dart';
import 'application/auth/sign_in_form/sing_in_form_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacad>(
      () => FirebaseAuthFacad(g<FirebaseAuth>(), g<GoogleSignIn>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacad>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
