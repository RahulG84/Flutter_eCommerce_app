import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Stars extends StatelessWidget {
  int rating;
  Stars({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 2.60,
      itemBuilder: (context, index) => const Icon(
        Icons.star,
        color: GlobalVariables.secondaryColor,
      ),
      itemCount: rating,
      itemSize: 30.0,
      direction: Axis.horizontal,
    );

    //   RatingBar.builder(
    //   initialRating: 3,
    //   minRating: 1,
    //   direction: Axis.horizontal,
    //   itemCount: rating,
    //   itemBuilder: (context, _) => const Icon(
    //     Icons.star,
    //     color: GlobalVariables.secondaryColor,
    //     size: 2,
    //   ),
    //   onRatingUpdate: (double value) {},
    // );
  }
}
