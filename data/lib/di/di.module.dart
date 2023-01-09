//@GeneratedMicroModule;DataPackageModule;package:data/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:data/mapper/data_mapper.dart' as _i4;
import 'package:data/repository/firebase_repository.dart' as _i10;
import 'package:data/service/firebase_service.dart' as _i5;
import 'package:data/service/sms_service.dart' as _i8;
import 'package:domain/repository/firebase_repository.dart' as _i9;
import 'package:firebase_impl/di/di.module.dart' as _i3;
import 'package:firebase_impl/firebase_impl.dart' as _i7;
import 'package:injectable/injectable.dart' as _i1;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
class DataPackageModule extends _i1.MicroPackageModule {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) async {
    await _i3.FirebaseImplPackageModule().init(gh);
    gh.lazySingleton<_i4.DataMapper>(() => _i4.DataMapperImpl());
    gh.factory<_i5.FirebaseService>(() => _i5.FirebaseService(
          gh<_i6.FirebaseFirestore>(),
          gh<_i7.FirebaseAuth>(),
        ));
    gh.singleton<_i8.SmsService>(_i8.SmsService(gh<_i7.FirebaseAuth>()));
    gh.singleton<_i9.FirebaseRepository>(_i10.FirebaseRepositoryImpl(
      gh<_i4.DataMapper>(),
      gh<_i5.FirebaseService>(),
      gh<_i8.SmsService>(),
    ));
  }
}
