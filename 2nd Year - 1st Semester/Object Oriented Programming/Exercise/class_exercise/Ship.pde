class Ship extends GameObject{
  
 float w = 20;
 float h = 20;
 
 Ship(){  
   x = 250;
   y = 250;
   w = 20;
   h = 20;   
 }
 
 Ship(float x, float y){
   this.x = x;  
   this.y = y;
 }
 
 Ship(float x, float y, float w, float h){
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
 }
 
 void display(){ 
  
  pushMatrix(); 
  translate(x,y);
  rotate(theta);   
  float halfWidth = w / 2;
  float halfHeight = h / 2;

    
  line(-halfWidth, halfHeight,0, - halfHeight);
  line(0,  - halfHeight, halfWidth,  halfHeight);
  line(halfWidth,  halfHeight, 0, 0);
  line(0,0,  - halfWidth,  halfHeight); 
  popMatrix(); 
   
 }
 
 void move(){
   float lx,ly;
   lx = sin(theta);
   ly = -cos(theta);
    if(keyPressed){
      if(key == 'w'){
        x += lx;
        y += ly;
      }else if(key == 's'){
        y++;
      }else if(key == 'a'){
        theta -= 0.1f;
      }else if(key == 'd'){
        theta += 0.1f;
      }
    
   } 
  }
}