 Particle[] particles;
void setup()
{
  size(400, 400);
  particles= new Particle [500];
  for (int i=0; i<particles.length; i++) {
    particles[i]=new NormalParticle();
    particles[0]=new OddballParticle();
    particles[499]= new JumboParticle();
  }


}
void draw()
{
  background(0);
  for (int i=0; i<particles.length; i++) {
    particles[i].move();
    particles[i].show();
  }

  //your code here
}
class NormalParticle implements Particle
{
  float x,y, Coloryah;
  double angle, speed;{
  x=200.0;
  y=200.0 ;
  Coloryah=(int)((Math.random()*255)+200);
  angle=Math.random()*360;
  speed=(Math.random()*10)+1;
  }

  public void move(){
   x+=Math.cos(angle)*speed;
   y+=Math.sin(angle)*speed;
   if(x<-5){
    x=200;
    y=200; 
   }
   if(y<-5){
     x=200;
    y=200; 
   }
   if(y>405){
    x=200;
   y=200; 
   }
   if(x>405){
     x=200;
     y=200;
   }
  }
  public void show(){
    fill(250);
    ellipse(x,y,3,3);
  }
}
interface Particle
{
  public void move();
  public void show();
  //your code here
}
class OddballParticle implements Particle//uses an interface
{float x,y, Coloryah;
  double angle, speed;{
  x=200.0;
  y=200.0 ;
  Coloryah=(int)((Math.random()*255)+200);
  angle=Math.random()*360;
  speed=(Math.random()*3)+1;
  }
  //your code here
  public void move() {
    x=x+(int)((Math.random()*6)-3);
    y=y+(int)((Math.random()*6)-3);
  }
  public void show() {
    fill(255,0,0);
    ellipse(x,y,10,10);
  }
}
class JumboParticle implements Particle//uses inheritance
{
  float x,y, Coloryah;
  double angle, speed;{
  x=200.0;
  y=200.0 ;
  Coloryah=(int)((Math.random()*255)+200);
  angle=Math.random()*360;
  speed=(Math.random()*10)+1;
  }
  public void move(){
    x+=Math.cos(angle)*speed;
   y+=Math.sin(angle)*speed;
   if(x<-5){
    x=200;
    y=200; 
     x+=Math.cos(angle)*speed;
   y+=Math.sin(angle)*speed;
   }
   if(y<-5){
     x=200;
    y=200; 
     x+=Math.cos(angle)*speed;
   y+=Math.sin(angle)*speed;
   }
   if(y>405){
    x=200;
   y=200; 
    x+=Math.cos(angle)*speed;
   y+=Math.sin(angle)*speed;
   }
   if(x>405){
     x=200;
     y=200;
      x+=Math.cos(angle)*speed;
   y+=Math.sin(angle)*speed;
   }
  }
  public void show(){
    fill(200,200,0);
    ellipse(x,y,20,20);
  }

  	//your code here
}
