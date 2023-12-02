import 'package:pigemshubshop/app/widgets/star_count.dart';
import 'package:pigemshubshop/core/domain/entities/review/review.dart';
import 'package:flutter/material.dart';

class ReviewProductForm extends StatelessWidget {
  final Review data;
  final void Function(int star) onTapStar;

  const ReviewProductForm({
    super.key,
    required this.data,
    required this.onTapStar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Review Product',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  data.product.productImage.first,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    data.product.productName,
                    style: Theme.of(context).textTheme.labelLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  StarRating(
                    star: data.star,
                    starSize: 24,
                    onTapStar: onTapStar,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Tell us about this product',
              labelText: 'Description (Optional)',
            ),
            onChanged: (value) {
              data.description = value;
            },
          ),
        ],
      ),
    );
  }
}
