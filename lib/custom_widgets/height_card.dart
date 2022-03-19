import 'package:bmi_calculator/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightCard extends GetView<Controller> {
  const HeightCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'ALTURA',
            style: TextStyle(
                color: Color(0xFF818596), fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Obx(
                () => Text(
                  '${controller.altura}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                ' cm',
                style: TextStyle(color: Color(0xFF818596)),
              ),
            ],
          ),
          Obx(
            () => Slider(
                activeColor: const Color(0xFFEA1556),
                inactiveColor: Colors.white,
                value: controller.altura.toDouble(),
                min: 120,
                max: 220,
                onChanged: (double novoValor) {
                  controller.setAltura(novoValor.toInt());
                }),
          ),
        ]),
      ),
    );
  }
}
