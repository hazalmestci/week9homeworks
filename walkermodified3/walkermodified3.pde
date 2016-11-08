ArrayList<Walker> walkerList = new ArrayList<Walker>();
float length = 10;
  
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
    fill(random (255), random (200,255), random(200,255), random (55));
    rotateX (radians (mouseX));
    rotateY (radians (mouseY));
     for(int i=0; i<10; i++) {
      for(int j=0; j<10; j++) {
       for(int k=0; k<10; k++) {
    pushMatrix ();
    translate(i*2, j*2, k*2);
   scale(2);
    ellipse(x, y, siz,random(-10,10));
    popMatrix();
    }
    rect(x, y, siz, random(-10,10));
   }}
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
  }}
 