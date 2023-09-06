void main() {
  String minutes = '01';
  String seconds = '01';

  void timer({required String minutes, required String seconds}) async {
    int intMinutes = int.parse(minutes);
    int intSeconds = int.parse(seconds);

    for (int i = intMinutes; i >= 0; i--) {
      for (int index = intSeconds; index >= 0; index--) {
        seconds = index.toString().padLeft(2, '0');
        minutes = i.toString().padLeft(2, '0');
        print('$minutes : $seconds');
        await Future.delayed(const Duration(seconds: 1));
      }
    }

    if (minutes == '00' && seconds == '00') {
      print('teste');
    }
  }

  timer(minutes: minutes, seconds: seconds);
}
