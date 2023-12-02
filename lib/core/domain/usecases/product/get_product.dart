import 'package:pigemshubshop/core/domain/entities/product/product.dart';
import 'package:pigemshubshop/core/domain/repositories/product_repository.dart';

class GetProduct {
  final ProductRepository _repository;

  GetProduct(this._repository);

  Future<Product?> execute({required String productId}) async {
    return await _repository.getProduct(productId: productId);
  }
}
