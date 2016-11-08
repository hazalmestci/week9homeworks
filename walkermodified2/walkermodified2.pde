ArrayList<Walker> walkerList = new ArrayList<Walker>();

void setup() {
  size(1000, 800, P3D);
  noStroke();
  background(0);
}

void draw() {
  for (Walker walker : walkerList) {
    walker.move();
    walker.display();
  }
}

void mousePressed() {
  walkerList.add(new Walker(mouseX, mouseY));
}

class Walker {
  float x, y, xStep, yStep, siz;

  Walker(float x, float y) {
    this.x = x;
    this.y = y;
    this.siz = 18;
    this.xStep = this.siz ;
    this.yStep = this.siz ;
  }

  void display() {
    fill(random (255), random (255), random(255), random (255));
    rotateX (radians (mouseX));
    rotateY (radians (mouseY));
    rect(x, y, siz, random(-40,40));
  }

  void move() {
    int rand = (int)random(4);
    switch (rand) {
    case 0:
      x+=xStep+3;
      break;
    case 1:
      x-=xStep+3;
      break;
    case 2:
      y+=yStep+3;
      break;
    case 3:
      y-=yStep+3;
      break;
    default:
      break;
    }
  }
}