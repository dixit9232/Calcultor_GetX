import 'package:calculator_getx/BackEnd_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Calculator extends StatelessWidget {
  Calculator({super.key});

  BackEnd_Controller controller = Get.put(BackEnd_Controller());

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  height: Get.height * 0.30,
                  width: Get.width * 0.95,
                  color: Colors.black,
                  child: Obx(() => Text(
                        "${controller.user_input}",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 60, color: Colors.white),
                      )),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.65,
              width: Get.width * 0.95,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.grey)),
                            onPressed: () {
                              controller.Function("AC");
                            },
                            child: Text(
                              "AC",
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.grey)),
                            onPressed: () {
                              controller.Function("C");
                            },
                            child: Text(
                              "C",
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.grey)),
                            onPressed: () {
                              controller.Function("%");
                            },
                            child: Text(
                              "%",
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.orange)),
                            onPressed: () {
                              controller.Function("/");
                            },
                            child: Text(
                              "/",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function("7");
                            },
                            child: Text(
                              "7",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function("8");
                            },
                            child: Text(
                              "8",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function("9");
                            },
                            child: Text(
                              "9",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.orange)),
                            onPressed: () {
                              controller.Function("*");
                            },
                            child: Text(
                              "*",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function("4");
                            },
                            child: Text(
                              "4",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function("5");
                            },
                            child: Text(
                              "5",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function("6");
                            },
                            child: Text(
                              "6",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.orange)),
                            onPressed: () {
                              controller.Function("-");
                            },
                            child: Text(
                              "-",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function("1");
                            },
                            child: Text(
                              "1",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function("2");
                            },
                            child: Text(
                              "2",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function("3");
                            },
                            child: Text(
                              "3",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.orange)),
                            onPressed: () {
                              controller.Function("+");
                            },
                            child: Text(
                              "+",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function("00");
                            },
                            child: Text(
                              "00",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function("0");
                            },
                            child: Text(
                              "0",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white12)),
                            onPressed: () {
                              controller.Function(".");
                            },
                            child: Text(
                              ".",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(
                                    Get.width * 0.2375, Get.height * 0.10)),
                                shape: MaterialStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.orange)),
                            onPressed: () {
                              controller.Function("=");
                            },
                            child: Text(
                              "=",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
