import 'package:pigemshubshop/core/domain/entities/payment_method/payment_method.dart';
import 'package:pigemshubshop/core/domain/repositories/payment_method_repository.dart';

class AddPaymentMethod {
  final PaymentMethodRepository _repository;

  AddPaymentMethod(this._repository);

  Future<void> execute({required String accountId, required PaymentMethod data}) async {
    return await _repository.addPaymentMethod(accountId: accountId, data: data);
  }
}
