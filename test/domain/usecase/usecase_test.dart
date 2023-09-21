import 'package:firekart/domain/models/account_details_model.dart';
import 'package:firekart/domain/models/cart_model.dart';
import 'package:firekart/domain/repository/auth_repository.dart';
import 'package:firekart/domain/repository/cart_repository.dart';
import 'package:firekart/domain/repository/order_repository.dart';
import 'package:firekart/domain/repository/product_repository.dart';
import 'package:firekart/domain/repository/user_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  AuthRepository,
  CartRepository,
  OrderRepository,
  ProductRepository,
  UserRepository,
  AddAddress,
  EditAddress,
  AccountDetails,
])
void main() {}


final mockAddress = Address(
  id: 1,
  name: 'John Doe',
  pincode: '12345',
  address: '123 Main Street',
  city: 'Sample City',
  state: 'Sample State',
  phoneNumber: '555-555-5555',
  isDefault: true,
);

final mockCart = Cart(
  productId: 1,
  image: 'product_image.jpg',
  name: 'Sample Product',
  unit: 'Piece',
  currency: 'USD',
  currentPrice: 19.99,
  quantityPerUnit: 1.0,
  numOfItems: 3,
);


final mockEditAddress = EditAddress(
  id: 1,
  name: 'John Doe',
  pincode: '12345',
  address: '123 Main Street',
  city: 'Sample City',
  state: 'Sample State',
  phoneNumber: '555-555-5555',
  isDefault: true,
);

final mockAccountDetails = AccountDetails(
  id: 1,
  name: 'John Doe',
  phoneNumber: '555-555-5555',
);