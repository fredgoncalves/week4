float[] values;
int index;
int counter =0;

void setup() {
  size(600, 250);
  background(0);

  values = new float[width/3];
  index = 0;
}

float maybeRandomHeight() {
  if (random(10) < 1) {
    return random(height/3, 2*height/3);
  } else {
    return 0;
  }
}

void draw() {
  background(255);
  int m = millis();
  values[index] = maybeRandomHeight();
  index = index + 1;
  if (m>=10000) {
    println("the variable index reseted to 0", counter, " times");
  }
  if (index >= values.length) {
    index = 0;
    counter++;
  }

  for (int i = 0; i < values.length; ++i) {
    int realIndex = index + i;
    if (realIndex >= values.length) {
      realIndex -= values.length;
    }
    line(i*3, height-values[realIndex], i*3, height);
  }
  println("the highest value of realIndex is", values.length+1);
  println("the lowest value of realIndex is", 0+1);
}
//highest 201
//lowest 1
// resets 3 times in 10 sec
