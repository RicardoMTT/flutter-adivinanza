import 'package:adivinanza_flutter/mainController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

const MaterialColor kPrimaryColor = const MaterialColor(
  0xFF0E7AC7,
  const <int, Color>{
    50: const Color(0xFF0E7AC7),
    100: const Color(0xFF0E7AC7),
    200: const Color(0xFF0E7AC7),
    300: const Color(0xFF0E7AC7),
    400: const Color(0xFF0E7AC7),
    500: const Color(0xFF0E7AC7),
    600: const Color(0xFF0E7AC7),
    700: const Color(0xFF0E7AC7),
    800: const Color(0xFF0E7AC7),
    900: const Color(0xFF0E7AC7),
  },
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  void initState() {
    Get.lazyPut<MainController>(() => MainController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.find<MainController>();

    resetear() {
      mainController.clickOne['open'] = true;
      mainController.clickTwo['open'] = true;
      mainController.clickThree['open'] = true;
      mainController.clickFour['open'] = true;
      mainController.clickFive['open'] = true;
      mainController.clickSeven['open'] = true;
    }

    sonIguales(numero) async {
      if (numero == 1) {
        mainController.clickOne['open'] = !mainController.clickOne['open'];
        if (mainController.clickSeven['open'] == false) {
          Get.defaultDialog(
            title: "True",
            middleText: "Son iguales!",
            backgroundColor: Colors.green,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );
          resetear();

          mainController.opciones.value = 0;
          mainController.deleteOneSeven.value = true;
        } else if (mainController.clickTwo['open'] == false ||
            mainController.clickThree['open'] == false ||
            mainController.clickFour['open'] == false ||
            mainController.clickFive['open'] == false) {
          //Error no son iguales
          Get.defaultDialog(
            title: "Falso",
            middleText: "No son iguales!",
            backgroundColor: Colors.redAccent,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );
          await Future.delayed(Duration(seconds: 3));
          if (mainController.clickTwo['open'] == false) {
            mainController.clickTwo['open'] = !mainController.clickTwo['open'];
          }
          if (mainController.clickThree['open'] == false) {
            mainController.clickThree['open'] =
                !mainController.clickThree['open'];
          }
          if (mainController.clickFour['open'] == false) {
            mainController.clickFour['open'] =
                !mainController.clickFour['open'];
          }
          if (mainController.clickFive['open'] == false) {
            mainController.clickFive['open'] =
                !mainController.clickFive['open'];
          }
          mainController.clickOne['open'] = true;
        } else {}
      } else if (numero == 7) {
        print("NMERO $numero");
        mainController.clickSeven['open'] = !mainController.clickSeven['open'];
        if (mainController.clickOne['open'] == false) {
          Get.defaultDialog(
            title: "True",
            middleText: "Son iguales!",
            backgroundColor: Colors.green,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );

          resetear();
          mainController.opciones.value = 0;
          mainController.deleteOneSeven.value = true;
        } else if (mainController.clickTwo['open'] == false ||
            mainController.clickThree['open'] == false ||
            mainController.clickFour['open'] == false ||
            mainController.clickFive['open'] == false) {
          //Error no son iguales
          Get.defaultDialog(
            title: "Falso",
            middleText: "No son iguales!",
            backgroundColor: Colors.redAccent,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );

          await Future.delayed(Duration(seconds: 3));
          if (mainController.clickTwo['open'] == false) {
            mainController.clickTwo['open'] = !mainController.clickTwo['open'];
          }
          if (mainController.clickThree['open'] == false) {
            mainController.clickThree['open'] =
                !mainController.clickThree['open'];
          }
          if (mainController.clickFour['open'] == false) {
            mainController.clickFour['open'] =
                !mainController.clickFour['open'];
          }
          if (mainController.clickFive['open'] == false) {
            mainController.clickFive['open'] =
                !mainController.clickFive['open'];
          }

          mainController.clickSeven['open'] = true;
        } else {}
      } else if (numero == 2) {
        print("numero $numero");
        mainController.clickTwo['open'] = !mainController.clickTwo['open'];
        if (mainController.clickFour['open'] == false) {
          Get.defaultDialog(
            title: "True",
            middleText: "Son iguales!",
            backgroundColor: Colors.green,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );

          resetear();
          mainController.opciones.value = 0;
          mainController.deleteTwoFour.value = true;
        } else if (mainController.clickOne['open'] == false ||
            mainController.clickThree['open'] == false ||
            mainController.clickSeven['open'] == false ||
            mainController.clickFive['open'] == false) {
          //VALIDAR CUANDO SON IGUALES Y SE ELIMINAN
          //Error no son iguales
          print("1 ${mainController.clickOne['open']}");
          print("3 ${mainController.clickThree['open']}");
          print("7 ${mainController.clickSeven['open']}");
          print("5 ${mainController.clickFive['open']}");

          Get.defaultDialog(
            title: "Falso",
            middleText: "No son iguales!",
            backgroundColor: Colors.redAccent,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );

          await Future.delayed(Duration(seconds: 3));
          if (mainController.clickOne['open'] == false) {
            mainController.clickOne['open'] = !mainController.clickOne['open'];
          }
          if (mainController.clickThree['open'] == false) {
            mainController.clickThree['open'] =
                !mainController.clickThree['open'];
          }
          if (mainController.clickSeven['open'] == false) {
            mainController.clickSeven['open'] =
                !mainController.clickSeven['open'];
          }
          if (mainController.clickFive['open'] == false) {
            mainController.clickFive['open'] =
                !mainController.clickFive['open'];
          }
          mainController.clickTwo['open'] = true;
        } else {
          // Volver a ocultar
          await Future.delayed(Duration(seconds: 3));
          mainController.clickTwo['open'] = true;
        }
      } else if (numero == 4) {
        mainController.clickFour['open'] = !mainController.clickFour['open'];
        if (mainController.clickTwo['open'] == false) {
          Get.defaultDialog(
            title: "True",
            middleText: "Son iguales!",
            backgroundColor: Colors.green,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );
          resetear();
          mainController.opciones.value = 0;
          mainController.deleteTwoFour.value = true;
          // resetear();
        } else if (mainController.clickOne['open'] == false ||
            mainController.clickThree['open'] == false ||
            mainController.clickSeven['open'] == false ||
            mainController.clickFive['open'] == false) {
          //Error no son iguales
          Get.defaultDialog(
            title: "Falso",
            middleText: "No son iguales!",
            backgroundColor: Colors.redAccent,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );

          await Future.delayed(Duration(seconds: 3));
          if (mainController.clickOne['open'] == false) {
            mainController.clickOne['open'] = !mainController.clickOne['open'];
          }
          if (mainController.clickThree['open'] == false) {
            mainController.clickThree['open'] =
                !mainController.clickThree['open'];
          }
          if (mainController.clickSeven['open'] == false) {
            mainController.clickSeven['open'] =
                !mainController.clickSeven['open'];
          }
          if (mainController.clickFive['open'] == false) {
            mainController.clickFive['open'] =
                !mainController.clickFive['open'];
          }

          mainController.clickFour['open'] = true;
        } else {}
      } else if (numero == 3) {
        mainController.clickThree['open'] = !mainController.clickThree['open'];
        if (mainController.clickFive['open'] == false) {
          Get.defaultDialog(
            title: "True",
            middleText: "Son iguales!",
            backgroundColor: Colors.green,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );
          resetear();
          mainController.opciones.value = 0;
          mainController.deleteThreeFive.value = true;
        } else if (mainController.clickOne['open'] == false ||
            mainController.clickTwo['open'] == false ||
            mainController.clickSeven['open'] == false ||
            mainController.clickFour['open'] == false) {
          //Error no son iguales
          Get.defaultDialog(
            title: "Falso",
            middleText: "No son iguales!",
            backgroundColor: Colors.redAccent,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );

          await Future.delayed(Duration(seconds: 3));
          if (mainController.clickOne['open'] == false) {
            mainController.clickOne['open'] = !mainController.clickOne['open'];
          }
          if (mainController.clickTwo['open'] == false) {
            mainController.clickTwo['open'] = !mainController.clickTwo['open'];
          }
          if (mainController.clickSeven['open'] == false) {
            mainController.clickSeven['open'] =
                !mainController.clickSeven['open'];
          }
          if (mainController.clickFour['open'] == false) {
            mainController.clickFour['open'] =
                !mainController.clickFour['open'];
          }

          mainController.clickThree['open'] = true;
        } else {}
      } else if (numero == 5) {
        mainController.clickFive['open'] = !mainController.clickFive['open'];
        if (mainController.clickThree['open'] == false) {
          Get.defaultDialog(
            title: "True",
            middleText: "Son iguales!",
            backgroundColor: Colors.green,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );
          resetear();

          mainController.opciones.value = 0;
          mainController.deleteThreeFive.value = true;
        } else if (mainController.clickOne['open'] == false ||
            mainController.clickTwo['open'] == false ||
            mainController.clickSeven['open'] == false ||
            mainController.clickFour['open'] == false) {
          //Error no son iguales
          Get.defaultDialog(
            title: "Falso",
            middleText: "No son iguales!",
            backgroundColor: Colors.redAccent,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
          );

          await Future.delayed(Duration(seconds: 3));
          if (mainController.clickOne['open'] == false) {
            mainController.clickOne['open'] = !mainController.clickOne['open'];
          }
          if (mainController.clickTwo['open'] == false) {
            mainController.clickTwo['open'] = !mainController.clickTwo['open'];
          }
          if (mainController.clickSeven['open'] == false) {
            mainController.clickSeven['open'] =
                !mainController.clickSeven['open'];
          }
          if (mainController.clickFour['open'] == false) {
            mainController.clickFour['open'] =
                !mainController.clickFour['open'];
          }
          mainController.clickFive['open'] = true;
        } else {}
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            InkWell(
              onTap: () {
                sonIguales(1);
              },
              child: Obx(
                () => mainController.clickOne['open']
                    ? mainController.deleteOneSeven.value == false
                        ? Placeholder()
                        : Container()
                    : mainController.deleteOneSeven.value == false
                        ? Container(
                            child: Image.asset('assets/nike.jpg'),
                          )
                        : Container(),
              ),
            ),
            InkWell(
              onTap: () {
                sonIguales(2);
              },
              child: Obx(
                () => mainController.clickTwo['open']
                    ? mainController.deleteTwoFour.value == false
                        ? Placeholder()
                        : Container()
                    : mainController.deleteTwoFour.value == false
                        ? Container(
                            child: Image.asset('assets/nike2.jpg'),
                          )
                        : Container(),
              ),
            ),
            InkWell(
              onTap: () {
                sonIguales(3);
              },
              child: Obx(() => mainController.clickThree['open']
                  ? mainController.deleteThreeFive.value == false
                      ? Placeholder()
                      : Container()
                  : mainController.deleteThreeFive.value == false
                      ? Container(
                          child: Image.asset('assets/gato.jpg'),
                        )
                      : Container()),
            ),
            InkWell(
                onTap: () {
                  sonIguales(4);
                },
                child: Obx(
                  () => mainController.clickFour['open']
                      ? mainController.deleteTwoFour.value == false
                          ? Placeholder()
                          : Container()
                      : mainController.deleteTwoFour.value == false
                          ? Container(
                              child: Image.asset('assets/nike2.jpg'),
                            )
                          : Container(),
                )),
            InkWell(
              onTap: () {
                sonIguales(5);
              },
              child: Obx(() => mainController.clickFive['open']
                  ? mainController.deleteThreeFive.value == false
                      ? Placeholder()
                      : Container()
                  : mainController.deleteThreeFive.value == false
                      ? Container(
                          child: Image.asset('assets/gato.jpg'),
                        )
                      : Container()),
            ),
            InkWell(
                onTap: () {
                  sonIguales(7);
                },
                child: Obx(
                  () => mainController.clickSeven['open']
                      ? mainController.deleteOneSeven.value == false
                          ? Placeholder()
                          : Container()
                      : mainController.deleteOneSeven.value == false
                          ? Container(
                              child: Image.asset('assets/nike.jpg'),
                            )
                          : Container(),
                )),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
