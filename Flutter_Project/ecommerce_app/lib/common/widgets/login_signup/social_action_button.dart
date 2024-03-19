import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class CircularSocialButton extends StatelessWidget {
  const CircularSocialButton({
    super.key,
    required this.onpressed,
    required this.image,
  });
  final VoidCallback onpressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: TColors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onpressed,
        icon: Image(
          height: TSizes.iconMd,
          width: TSizes.iconMd,
          image: AssetImage(image),
        ),
      ),
    );
  }
}