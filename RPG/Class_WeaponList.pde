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
    for (int i = 0; i < 30; i++) {
     PVector aimVector = new PVector(mouseX-myHero.loc.x, mouseY-myHero.loc.y);
     aimVector.rotate(random(-PI, PI));
     aimVector.setMag(bulletSpeed);
     myObjects.add(new Bullet(aimVector, #00FF4A, 10));
    }
    shotTimer = 0;
    }
   }
 }
