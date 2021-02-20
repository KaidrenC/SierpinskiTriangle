public void setup(){
  size(200,200);
  background(0);
}
public void draw(){
  sierpinski((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
}
public void sierpinski(int x, int y, int len){
  if(len<=10){
    triangle(x,y, x+len/2, y-len, x+len, y);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
