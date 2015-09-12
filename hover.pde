void hover() {
  if (dist(mouseX, mouseY, cx, cy)<20) {
    step = 0;
//    display();
    for (int i=0; i<19; i++) {
    stroke(235);
    strokeWeight(1);
    line(position[i].x, position[i].y, position[i+1].x, position[i+1].y);
  }
  //draw graphics
  for (int i=0; i<20; i++) {
    //draw lines
    fill(200);
    stroke(235);
    line(position[i].x, position[i].y, position[i].x, height-90);
    noStroke();
    ellipse(position[i].x, position[i].y, 10, 10);
    //drawdatas
    textAlign(CENTER, BOTTOM);
    textFont(font);
    text("Rank "+allhistory[i].rank, position[i].x, position[i].y-10);
    textAlign(CENTER, TOP);
    text(allhistory[i].date, position[i].x, height-80);
  }
  noStroke();
  noFill();
  }
  else step = mstep;
  
}

