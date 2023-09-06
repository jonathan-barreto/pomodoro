import 'package:flutter/material.dart';

class HomePageController extends ChangeNotifier {
  bool start = false;

  String msg = '';

  double progress = 0;

  String minutes = '25';
  String seconds = '00';

  int vezes = 0;

  void alterProgress(int minutes) {
    int oneMinutesSeconds = 60;
    int totalSeconds = oneMinutesSeconds * minutes;
    progress += 60 / totalSeconds;
    notifyListeners();
  }

  void clearProgress() {
    progress = 0;
    notifyListeners();
  }

  void notifyMinutesAndSeconds(int intMinutes, int intSeconds) {
    minutes = intMinutes.toString().padLeft(2, '0');
    seconds = intSeconds.toString().padLeft(2, '0');
    notifyListeners();
  }

  void focus() async {
    vezes++; 
    msg = 'Focus';
    notifyListeners();
    await timer(1);
    if(vezes < 4){
      shortBreak();
    } else {
      longBreak();
    }
  }

  void shortBreak() async {
    msg = 'short';
    notifyListeners();
    await timer(2);
    focus();
  }

  void longBreak() async {
    msg = 'long';
    notifyListeners();
    await timer(15);
  }

  Future<void> timer(int minutes) async {
    for (int i = minutes - 1; i >= 0; i--) {
      for (int index = 1; index >= 0; index--) {
        await Future.delayed(const Duration(seconds: 1), () {
          notifyMinutesAndSeconds(i, index);
        });
      }
      alterProgress(minutes);
    }
    clearProgress();
  }
}
