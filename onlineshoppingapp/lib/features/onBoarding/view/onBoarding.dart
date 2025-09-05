import 'package:flutter/material.dart';
import 'package:onlineshoppingapp/core/utils/onBoarding_list.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFCE4EC),
        body: SafeArea(
            child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: PageView.builder(
                      itemCount: onBoardingList.length,
                      itemBuilder: (context, index) => Column(
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              Image.asset(onBoardingList[index].image!),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ...List.generate(
                                            onBoardingList.length,
                                            (index) => AnimatedContainer(
                                                  duration: Duration(
                                                      microseconds: 150),
                                                  margin:
                                                      EdgeInsets.only(right: 5),
                                                ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )))
            ],
          ),
        )));
  }
}
