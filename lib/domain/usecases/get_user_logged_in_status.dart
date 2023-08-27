/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */

import 'package:firekart/domain/repository/firekart_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@injectable
class GetUserLoggedInStatusUseCase {
  GetUserLoggedInStatusUseCase(this._repository);

  final FirekartRepository _repository;

  bool execute() {
    return _repository.isLoggedIn();
  }
}
