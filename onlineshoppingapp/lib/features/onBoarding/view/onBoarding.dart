import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingapp/core/constant/color.dart';
import 'package:onlineshoppingapp/core/utils/onBoarding_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onlineshoppingapp/features/onBoarding/view-model/cubit/onboarding_cubit.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = OnboardingCubit.get(context);
          return Scaffold(
              backgroundColor: AppColor.backgroundColor,
              body: SafeArea(
                  child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: PageView.builder(
                            controller: cubit.pageController,
                            itemCount: onBoardingList.length,
                            itemBuilder: (context, index) => Column(
                                  children: [
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    Image.asset(
                                      onBoardingList[index].image!,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.4,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ...List.generate(
                                                  onBoardingList.length,
                                                  (index) => AnimatedContainer(
                                                        duration:
                                                            const Duration(
                                                                microseconds:
                                                                    150),
                                                        margin: const EdgeInsets
                                                            .only(right: 5),
                                                        height:
                                                            cubit.currentIndex ==
                                                                    index
                                                                ? 20
                                                                : 18,
                                                        width:
                                                            cubit.currentIndex ==
                                                                    index
                                                                ? 20
                                                                : 18,
                                                        decoration: BoxDecoration(
                                                            color: cubit
                                                                        .currentIndex ==
                                                                    index
                                                                ? AppColor
                                                                    .darkPinkColor
                                                                : AppColor
                                                                    .lightPinkColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                      ))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      onBoardingList[index].title!,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.darkPinkColor),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35, right: 15, left: 15),
                                      child: Container(
                                        width: double.infinity,
                                        alignment: Alignment.center,
                                        child: Text(
                                          onBoardingList[index].textBody!,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: AppColor.violetColor),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 40, right: 16, left: 16),
                                      child: Container(
                                        width: 347.w,
                                        height: 48.h,
                                        child: MaterialButton(
                                          color: AppColor.buttonColor,
                                          textColor: Colors.white,
                                          padding: const EdgeInsets.only(
                                              right: 50, left: 50),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(14)),
                                          onPressed: () {
                                            if (context
                                                    .read<OnboardingCubit>()
                                                    .currentIndex <
                                                onBoardingList.length - 1) {
                                              context
                                                  .read<OnboardingCubit>()
                                                  .nextPage();
                                            } else {
                                              // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen() ));
                                            }
                                          },
                                          child: const Text("Next"),
                                        ),
                                      ),
                                    )
                                  ],
                                )))
                  ],
                ),
              )));
        },
      ),
    );
  }
}
