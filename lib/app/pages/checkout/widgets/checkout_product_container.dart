import 'package:pigemshubshop/core/domain/entities/cart/cart.dart';
import 'package:pigemshubshop/utils/extension.dart';
import 'package:flutter/material.dart';

import '../../../../routes.dart';

class CheckoutProductContainer extends StatelessWidget {
  final Cart item;
  const CheckoutProductContainer({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8.0),
      onTap: () {
        NavigateRoute.toDetailProduct(context: context, productId: item.productId);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        height: 90,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                item.product!.productImage.first,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
                loadingBuilder: (_, child, loadingProgress) {
                  if (loadingProgress == null) return child;

                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error);
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.product!.productName,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    item.product!.productPrice.toCurrency(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Quantity: ${item.quantity.toNumericFormat()}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
