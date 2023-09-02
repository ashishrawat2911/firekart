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

import 'package:dartz/dartz.dart' hide Order;
import 'package:firekart/domain/models/cart_model.dart';
import 'package:firekart/domain/network_result/network_error.dart';

abstract class CartRepository {
  Future<Either<NetworkError, void>> addProductToCart(int productId);

  Future<Either<NetworkError, void>> updateCart(int productId, int quantity);

  Future<Either<NetworkError, void>> deleteFromCart(int productId);

  Future<Either<NetworkError, List<Cart>>> getCarts();
}
