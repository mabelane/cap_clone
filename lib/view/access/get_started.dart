import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant/colours.dart';
import '../../utils/constant/icon_path.dart';
import '../shared/default_button.dart';
import 'onboarding/activate_app.dart';
import 'onboarding/activate_business_app.dart';
import 'register/open_account.dart';
import 'register/open_business_account.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  bool isVisible = false;
  bool isBtnVisible = false;

  Color signInSelectedColor = astronatBlue;
  Color signUnSelectedColor = white;
  Color accSelectedColor = astronatBlue;
  Color accUnSelectedColor = white;

  Color myInSelectedColor = astronatBlue;
  Color myUnSelectedColor = white;
  Color busiSelectedColor = astronatBlue;
  Color busiUnSelectedColor = white;

  bool accIsSelected = false;
  bool signIsSelected = false;

  bool myIsSelected = false;
  bool busiIsSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          child: Column(children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  hello,
                  const Text("What would you like to do?"),
                ],
              ),
            ),
            Container(
              color: Colors.transparent,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        signIsSelected = !signIsSelected;
                        accIsSelected = false;
                        if (isVisible == false) {
                          isVisible = !isVisible;
                        }
                      });
                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25)),
                        color: signIsSelected == true
                            ? signInSelectedColor
                            : signUnSelectedColor,
                      ),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: signIsSelected == true
                                ? signUnSelectedColor
                                : signInSelectedColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        accIsSelected = !accIsSelected;
                        signIsSelected = false;
                        if (isVisible == false) {
                          isVisible = !isVisible;
                        }
                      });
                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25)),
                        color: accIsSelected == true
                            ? accSelectedColor
                            : accUnSelectedColor,
                      ),
                      child: Center(
                        child: Text(
                          "Open an account",
                          style: TextStyle(
                            color: accIsSelected == true
                                ? accUnSelectedColor
                                : accSelectedColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isVisible,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: const Text("For"),
                  ),
                  Container(
                    color: Colors.transparent,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              myIsSelected = !myIsSelected;
                              busiIsSelected = false;
                              if (isBtnVisible == false) {
                                isBtnVisible = !isBtnVisible;
                              }
                            });
                          },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25)),
                              color: myIsSelected == true
                                  ? myInSelectedColor
                                  : myUnSelectedColor,
                            ),
                            child: Center(
                              child: Text(
                                "Myself",
                                style: TextStyle(
                                  color: myIsSelected == true
                                      ? myUnSelectedColor
                                      : myInSelectedColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              busiIsSelected = !busiIsSelected;
                              myIsSelected = false;
                              if (isBtnVisible == false) {
                                isBtnVisible = !isBtnVisible;
                              }
                            });
                          },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.42,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25)),
                              color: busiIsSelected == true
                                  ? busiSelectedColor
                                  : busiUnSelectedColor,
                            ),
                            child: Center(
                              child: Text(
                                "My Business",
                                style: TextStyle(
                                  color: busiIsSelected == true
                                      ? busiUnSelectedColor
                                      : busiSelectedColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isBtnVisible,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: defaultButton(
                    context: context,
                    text: "Get Started",
                    onPressed: () {
                      if (signIsSelected == true && myIsSelected == true) {
                        Get.to(() => const ActivateApp());
                      } else if (signIsSelected == true &&
                          busiIsSelected == true) {
                        Get.to(() => const ActivateBusinessApp());
                      } else if (accIsSelected == true &&
                          myIsSelected == true) {
                        Get.to(() => const OpenAccount());
                      } else {
                        Get.to(() => const OpenBusinessAccount());
                      }
                    }),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
