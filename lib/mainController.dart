import 'package:get/get.dart';

class MainController extends GetxController {
  final clickOne = {'open': true, 'pair': 'seven'}.obs;
  final clickTwo = {'open': true, 'pair': 'four'}.obs;
  final clickThree = {'open': true, 'pair': 'five'}.obs;
  final clickFour = {'open': true, 'pair': 'two'}.obs;
  final clickFive = {'open': true, 'pair': 'three'}.obs;
  final clickSeven = {'open': true, 'pair': 'one'}.obs;

  final deleteOneSeven = false.obs;
  final deleteTwoFour = false.obs;
  final deleteThreeFive = false.obs;

  final opcionSelected = 0.obs;
  final opciones = 0.obs;
}
