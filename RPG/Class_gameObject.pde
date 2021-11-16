class GameObject {
  PVector loc;
  PVector vel;
  int hp; //hitpoints
  int roomX, roomY;
  int size;
  
 GameObject() {
   loc = new PVector (width/2, height/2);
   vel = new PVector (0, 0);
   hp = 1;
 }
 
 void show() {
 }
 
 void act() {
   loc.add(vel);
   
   //MrP's code for hitting walls
   if (loc.x < width*0.1) loc.x = width*0.1;
   if (loc.x > width*0.9) loc.x = width*0.9;
   if (loc.y < height*0.1) loc.y = height*0.1;
   if (loc.y > height*0.9) loc.y = height*0.9;
 }
}
