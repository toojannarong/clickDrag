// Click and Drag an object
// Daniel Shiffman <http://www.shiffman.net>

Draggable d;
Draggable d1;
void setup() {
  size(200,200);
  smooth();
  d = new Draggable(50,50,60,25);
   d1 = new Draggable(0,0,20,25);
}

void draw() {
  background(255);
  d.rollover(mouseX,mouseY);
  d.drag(mouseX,mouseY);
  d.display();
  d1.rollover(mouseX,mouseY);
  d1.drag(mouseX,mouseY);
  d1.display();
}

void mousePressed() {
  d.clicked(mouseX,mouseY);
  d1.clicked(mouseX,mouseY);
}

void mouseReleased() {
  d.stopDragging();
  d1.stopDragging();
}
