void header() {
  textAlign(LEFT);
  fill(150, 150, 150);
  textFont(title);
  text("Sell Rank History ", xmargin/2, margin/4+5);
  textFont(font);
  text("Book Title: <THE FIRST PHONE CALL FROM HEAVEN>", xmargin/2, margin/4 +25);
  text("2013/12/29 - 2014/03/09", xmargin/2, margin/4 +45);
  text("Data source: NYTimes", xmargin/2, margin/4 + 65);
  stroke(150, 150, 150);
  strokeWeight(1);
  line(0, margin/4 + 85, width, margin/4 + 85);
}
