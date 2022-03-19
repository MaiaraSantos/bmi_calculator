import 'package:bmi_calculator/button.dart';
import 'package:bmi_calculator/controller.dart';
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
              const imageSection(),
              const SizedBox(height: 30.0),
              SizedBox(
                height: 180,
                child: heightCard(controller: controller),
              ),
              const SizedBox(height: 6.0),
              SizedBox(
                height: 180,
                child: weightCard(controller: controller),
              ),
              const SizedBox(height: 10),
              Button(
                onPressed: () {
                  controller.calcularIMC();
                  Get.to(
                    Get.dialog(
                      dialogResult(
                        controller.infoText,
                        controller.calcularIMC(),
                        controller.escalaPeso,
                        controller.infoInterpretacao,
                      ),
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

class weightCard extends StatelessWidget {
  const weightCard({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final Controller controller;

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

class heightCard extends StatelessWidget {
  const heightCard({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final Controller controller;

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

class imageSection extends StatelessWidget {
  const imageSection({
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
