void bouncing() {
  frameRate(30);
  speed += step;
  //speed changing depends on up or down
  if (distY[b]>0) {
    ex = 4;
  }
  else ex = 0.4;
  //draw motion path
  cx =  bx + (speed * distX[1]);
  cy =  by + (pow(speed, ex) * distY[b]);
  smooth();
  noStroke();
  //show data
  if (abs(position[b].x - cx) < 5) {
    frameRate(10);
    balls(b); 
    dataR += 250;
    fill(0);
    displaytext(b);
    a = color(255, 50, 10);
  }
  else {
    fill(255, 98, 10);
    dataR = 20;
  }
  //draw boucing ball
  ellipse(cx, cy, radius, radius);
  //jump
  if (position[b+1].x - cx < 1) {
    cx = position[b+1].x;
    cy = position[b+1].y;
    bx = position[b+1].x;
    by = position[b+1].y;
    b ++;
    speed = 0;
    println("jump");
  }
  if (b>=19) {
    b = 0;
    cx = position[0].x;
    cy = position[0].y;
    bx = position[0].x;
    by = position[0].y;
  }
  //hover
  hover();
}

