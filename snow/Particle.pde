class Particle {
  PVector pos;
  PVector vel;
  float s; // size
  float a; // alpha
  float lifetime;
  //float yVel;
  float randomStep; 
  PVector acc;
  
  Particle(float x, float y, float _randomStep) {
    pos = new PVector(x, y); 
    vel = new PVector(0, random(0.8,1.3));
    acc = new PVector(0,0.001);
    s =random(3,10);
    a = random(100,255);
    randomStep = _randomStep; 
    lifetime =800;
    y=random(0,600);
    //have random step parameter 
    
 //   yVel = random(1,2);
  }
  
   void update() {
    lifetime--;
    pos = pos.add(vel);
    vel = vel.add(acc);
    
   s = map(a, 200, 0, 3, 10);
  
   if (a > 0) {
     a-=0.3;}
   
  } 
      
  void display() {
    //#42B4EA
    fill(255, a);
      ellipse(pos.x,pos.y,s,s);
      ellipse(pos.x+randomStep,pos.y,s,s);
    //  ellipse(pos.x+randomStep+10,pos.y-100,s, s);
   
   }    
}