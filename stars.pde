class Star {
  float x, y, z, pz;

  Star() {
    x = random(-width / 2, width / 2);
    y = random(-height / 2, height / 2);
    z = random(width);
    //pz = z;
  }

  void update() {
    z = z - speed;
    if(z < 1) {
      z = width;
      x = random(-width / 2, width / 2);
      y = random(-height / 2, height / 2);
      //pz = z;
    }
    if (upPressed) {
      y = y - 1 * speed / 4;
    }
    if (downPressed) {
      y = y + 1 * speed / 4;
    }
    if (leftPressed) {
      x = x - 1 * speed / 4;
    }
    if (rightPressed) {
      x = x + 1 * speed / 4;
    }
  }

  void show() {
    fill(255);
    noStroke();

    float sx = map(x / z, 0, 1, 0, width/1.5);
    float sy = map(y / z, 0, 1, 0, height/1.5);
    
    float r = map(z, 0, width, 2, 0);
    ellipse(sx, sy, r, r);
    
    //float px = map(x / pz, 0, 1, 0, width/2);
    //float py = map(y / pz, 0, 1, 0, height/2);
    
    //pz = z;
    //stroke(255);
    //line(px, py, sx, sy);
  }
 
}
