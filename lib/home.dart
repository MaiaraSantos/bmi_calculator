import 'package:bmi_calculator/custom_widgets/button.dart';
import 'package:bmi_calculator/controller.dart';
import 'package:bmi_calculator/custom_widgets/height_card.dart';
import 'package:bmi_calculator/custom_widgets/image_section.dart';
import 'package:bmi_calculator/custom_widgets/weight_card.dart';
import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetView<Controller> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
        centerTitle: true,
        backgroundColor: const Color(0xFF090C22),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ImageSection(),
              const SizedBox(height: 30.0),
              const SizedBox(
                height: 180,
                child: HeightCard(),
              ),
              const SizedBox(height: 6.0),
              const SizedBox(
                height: 180,
                child: WeightCard(),
              ),
              const SizedBox(height: 10),
              Button(
                onPressed: () {
                  controller.calcularIMC();
                  Get.dialog(
                    dialogResult(
                      controller.infoText,
                      controller.calcularIMC(),
                      controller.escalaPeso,
                      controller.infoInterpretacao,
                    ),
                  );
                },
                title: 'CALCULAR',
              )
            ],
          ),
        ),
      ),
    );
  }
}
