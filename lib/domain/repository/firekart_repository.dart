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
import 'package:firekart/domain/models/account_details_model.dart';
import 'package:firekart/domain/models/add_order_model.dart';
import 'package:firekart/domain/models/cart_model.dart';
import 'package:firekart/domain/models/login.dart';
import 'package:firekart/domain/models/order_model.dart';
import 'package:firekart/domain/models/product_model.dart';
import 'package:firekart/domain/network_result/network_error.dart';

abstract class FirekartRepository {
  bool isLoggedIn();

  Future<Either<NetworkError, Login>> login(String phoneNumber);

  Future<Either<NetworkError, void>> verifyOtp(String phoneNumber,
      String smsCode, {
        String? name,
      });

  Future<Either<NetworkError, void>> addProductToCart(int productId);

  Future<Either<NetworkError, void>> updateCart(int productId, int quantity);

  Future<Either<NetworkError, void>> deleteFromCart(int productId);

  Future<Either<NetworkError, List<Cart>>> getCarts();

  Future<Either<NetworkError, List<Product>>> getAllProducts();

  Future<Either<NetworkError, AccountDetails>> getUserDetails();

  Future<Either<NetworkError, List<Address>>> fetchUserAddress();

  Future<Either<NetworkError, void>> addAddress(AddAddress address);

  Future<Either<NetworkError, void>> editAddress(EditAddress address);

  Future<Either<NetworkError, void>> placeOrder(AddOrder order);

  Future<Either<NetworkError, List<Order>>> getAllOrders();

  Future<void> logout();
}
