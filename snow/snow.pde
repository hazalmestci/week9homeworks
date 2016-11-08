ArrayList<Particle> rain = new ArrayList<Particle>();
int spawnRate = 3;

void setup() {
  size(800,800);
  noStroke();
//  frameRate(200); 

}

void draw() {
  background(0);
   fill(255);
   rect(0,700, 800 ,800);
  spawnRate = (int)random(1,2);

  if (frameCount % 1 == 0) {
    Particle p = new Particle(random(0,width), 0, random(10, 100));
    rain.add(p);
  }
 
  for (int i = rain.size()-1; i >= 0; i--) {
    Particle temp = rain.get(i);
    temp.update();
    temp.display();
    
    if (temp.lifetime < 0) {
      rain.remove(i);
    }
    
  }}
  