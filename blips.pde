int[] x;
int[] count;
void setup() {
  size(500, 500);

  x = new int[height];
  count = new int[height];
  for (int i = 0; i < height; i++) {
    count[i] = 30;
  }
}

void draw() {
  background(255);
  int fifth=0;
  for (int i = 0; i < height; i++) {
    if (count[i] < 30) {
      if (count[i] < 15) {
        line(x[i], i, x[i] + count[i]*10, i);
      } else {
        line(x[i] + (count[i] - 15)*10, i, x[i] + 150, i);
      }
        /*
        fifth++;
        if (fifth == 4){
        println("length is",count[i]*10);
        }
        I tried to print the length of the 5th line, but couldn't figure it out. But by analizing it, I would say it's 50 units long.*/
    }
    count[i]++;
    println("count[",i,"] is",count[i]); // value keeps growing indefinitely
  }

  if (mousePressed) {
    x[mouseY] = mouseX;
    count[mouseY] = 0;
  }
}
