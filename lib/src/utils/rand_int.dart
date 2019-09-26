import 'dart:math';


int getRandomInt(int min, int max){
  Random rnd = new Random(DateTime.now().millisecondsSinceEpoch);
  int min = 1, max = 5;
  return min + rnd.nextInt(max - min);
}