import 'package:pigemshubshop/core/domain/entities/address/address.dart';
import 'package:flutter/material.dart';

class SelectedShippingAddress extends StatelessWidget {
  final Address shippingAddress;
  const SelectedShippingAddress({
    Key? key,
    required this.shippingAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shipping Address',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        ListTile(
          dense: true,
          title: Text(shippingAddress.name),
          contentPadding: EdgeInsets.zero,
          visualDensity: const VisualDensity(vertical: -4),
          subtitle: Text(
            '${shippingAddress.address} ${shippingAddress.city} ${shippingAddress.zipCode}',
          ),
        ),
      ],
    );
  }
}
