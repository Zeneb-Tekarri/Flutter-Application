import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  static OnboardingCubit get(context) => BlocProvider.of(context);
  OnboardingCubit() : super(OnBoardingInitial()) {
    pageController = PageController();
  }
  late PageController pageController;
  int currentIndex = 0;
  void changeCurrentIndex(int index) {
    currentIndex = index;
    emit(ChangeDotState());
  }

  void nextPage() {
    currentIndex++;
    pageController.animateToPage(currentIndex,
        duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
    emit(NextPageState());
  }
}
