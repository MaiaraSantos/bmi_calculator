import 'package:get/get.dart';

class Controller extends GetxController {
  final RxInt _altura = 120.obs;
  int get altura => _altura.value;

  void setAltura(int value) => _altura.value = value;

  final RxInt _peso = 30.obs;
  int get peso => _peso.value;

  void setPeso(int value) => _peso.value = value;

  final RxDouble _imc = 0.0.obs;
  double get imc => _imc.value;

  void setImc(double value) => _imc.value = value;

  void decrementPeso() {
    int aux = peso;
    if (_peso > 0) {
      aux--;
    }
    setPeso(aux);
  }

  void incrementPeso() {
    int aux = peso;
    ++aux;
    setPeso(aux);
  }

  final RxString _infoText = ''.obs;

  String get infoText => _infoText.value;

  void setInfoText(String value) {
    _infoText.value = value;
  }

  final RxString _infoInterpretacao = ''.obs;

  String get infoInterpretacao => _infoInterpretacao.value;

  void setinfoInterpretacao(String value) {
    _infoInterpretacao.value = value;
  }

  final RxString _escalaPeso = ''.obs;

  String get escalaPeso => _escalaPeso.value;

  void setEscalaPeso(String value) {
    _escalaPeso.value = value;
  }



  String calcularIMC() {
    double weight = peso.toDouble();
    double height = altura / 100;
    double _imc = (weight / (height * height));

    if (_imc < 16) {
      setInfoText('Magreza grave');
      setEscalaPeso('Menor que 16kg/m2');
      setinfoInterpretacao(
          'Você tem um índice de massa corporal considerado magreza grave');
    } else if (_imc > 16 && _imc < 17) {
      setInfoText('Magreza moderada');
      setEscalaPeso('16 - 17kg/m2');
      setinfoInterpretacao(
          'Você tem um índice de massa corporal considerado magreza moderada');
    } else if (_imc > 17 && _imc < 18.5) {
      setInfoText('Magreza leve');
      setEscalaPeso('17 - 18,5kg/m2');
      setinfoInterpretacao(
          'Você tem um índice de massa corporal considerado magreza leve');
    } else if (_imc > 18.5 && _imc < 24.9) {
      setInfoText('Saudável');
      setEscalaPeso('18,5 - 24,9kg/m2');
      setinfoInterpretacao(
          'Você tem um índice de massa corporal considerado saudável');
    } else if (_imc > 25 && _imc < 29.9) {
      setInfoText('Sobrepeso)');
      setEscalaPeso('24,5 - 29,9kg/m2');

      setinfoInterpretacao(
          'Você tem um índice de massa corporal considerado sobrepeso');
    } else if (_imc > 30 && _imc < 34.9) {
      setInfoText('Obesidade grau 1)');
      setEscalaPeso('29,9 - 39,9kg/m2');

      setinfoInterpretacao(
          'Você tem um índice de massa corporal considerado grau 1 de obesidade');
    } else if (_imc > 35 && _imc < 39.9) {
      setInfoText('Obesidade grau 2})');
      setEscalaPeso('35 - 39,9kg/m2');

      setinfoInterpretacao(
          'Você tem um índice de massa corporal considerado grau 2 de obesidade');
    } else if (_imc > 40) {
      setInfoText('Obesidade grau 3');
      setEscalaPeso('Acima de 40kg/m2');

      setinfoInterpretacao(
          'Você tem um índice de massa corporal considerado grau 3 de obesidade');
    }

    return _imc.toStringAsFixed(1);
  }
}
