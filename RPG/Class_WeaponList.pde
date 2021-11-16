class SniperRifle extends Weapon {
 SniperRifle() {
  super(100, 20); 
 }
}

class AutoPistol extends Weapon {
 AutoPistol() {
  super(10, 5); 
 }
}

class Shotgun extends Weapon {
 Shotgun() {
   super(10, 5);
 }
 
 void shoot() {
   if (shotTimer >= threshold) {
    for (int i = 0; i < 10; i++) {
     PVector aimVector = new PVector(mouseX-myHero.loc.x, mouseY-myHero.loc.y);
     aimVector.rotate(random(-PI/8, PI/8));
     aimVector.setMag(bulletSpeed);
     myObjects.add(new Bullet(aimVector, #00FF4A, 14));
    }
    shotTimer = 0;
    }
   }
 }
