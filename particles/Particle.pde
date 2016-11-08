class Particle {
  PVector pos;
  PVector vel;
  float s; // size
  float size; 
  float a; // alpha
  float lifetime;
  //float yVel;
  float randomStep; 
  PVector acc;
  
  Particle(float x, float y, float _randomStep) {
    pos = new PVector(x, y); 
    vel = new PVector(0, random(1,10));
    acc = new PVector(0,0.1);
    s =random(1,3);
    //a = 140;
    randomStep = _randomStep; 
    lifetime = 100;
    //have random step parameter 
    
 //   yVel = random(1,2);
  }
  
   void update() {
    size += s + sin(frameRate)*5; 
    lifetime--;
    pos = pos.add(vel);
    vel = vel.add(acc);
    
  //  s = map(a, 40, 0, 30, 150);
  
    //if (a > 0) {
    //  a-=0.5;
   //
  } 
      
  void display() {
    fill(0);
    
      ellipse(pos.x,pos.y,size,size);
      ellipse(pos.x+randomStep,pos.y,size,size);
      ellipse(pos.x+randomStep,pos.y,size,size);
   }    
}