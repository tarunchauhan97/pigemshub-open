import 'package:pigemshubshop/app/widgets/cart/count_cart_quantity.dart';
import 'package:pigemshubshop/core/domain/entities/cart/cart.dart';
import 'package:pigemshubshop/utils/extension.dart';
import 'package:flutter/material.dart';

import '../../../routes.dart';

class CartContainer extends StatelessWidget {
  final Cart item;
  final Function() onTapAdd;
  final Function() onTapRemove;
  const CartContainer({Key? key, required this.item, required this.onTapAdd, required this.onTapRemove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8.0),
      onTap: () {
        NavigateRoute.toDetailProduct(context: context, productId: item.productId);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      item.product!.productName,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.product!.productPrice.toCurrency(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        CountCartQuantity(
                          onTapAdd: onTapAdd,
                          onTapRemove: onTapRemove,
                          quantity: item.quantity,
                        ),
                      ],
                    ),
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
