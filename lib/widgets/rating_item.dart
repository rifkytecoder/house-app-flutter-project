import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  const RatingItem({required this.index, required this.rating});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      child: index <= rating
          ? const Icon(
              Icons.star_rate_rounded,
              color: Colors.amber,
            )
          : Icon(
              Icons.star_rate_rounded,
              color: Colors.grey[300],
            ),
    );
  }
}
