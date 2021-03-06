import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageSection extends GetView {
  const ImageSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Image.asset('assets/images/calculator.png'),
    );
  }
}
