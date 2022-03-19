import 'package:bmi_calculator/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightCard extends GetView<Controller> {
  const WeightCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'PESO',
            style: TextStyle(
                color: Color(0xFF818596), fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(60, 60),
                  shape: const CircleBorder(),
                ),
                onPressed: () {
                  controller.decrementPeso();
                },
                child: const Icon(Icons.remove),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Obx(
                    () => Text(
                      '${controller.peso}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    ' kg',
                    style: TextStyle(color: Color(0xFF818596)),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(60, 60),
                  shape: const CircleBorder(),
                ),
                onPressed: () {
                  controller.incrementPeso();
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
