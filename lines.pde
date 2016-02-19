size(400, 400);
background(255);
int counter=0;
int counterH=0;
int counterV=0;

for (int x = 0; x <= width; x += 10) {
  for (int y = 0; y <= height; y += 10) {
    float dx = 7*(1-2.0*x/width);
    float dy = 7*(1-2.0*y/height);
    line(x, y, x+dx, y+dy);
    counter = counter+1;
    if (y == y+dy){
      counterH=counterH+1;
    }
    if(x == x+dx){
      counterV=counterV+1;
    }
  }
}
  println("line is called ",counter," times"); //line is called 1681 times
  println("there are ",counterH," horizontal lines"); //the are 41 horizontal lines
  println("there are ",counterV," vertical lines"); //there are 41 vertical lines
