import com.temboo.core.*;
import com.temboo.Library.NYTimes.BestSellers.*;

JSONObject rankhistory;
PVector[] position = new PVector[20];
PVector[] highpos = new PVector[20];
History[] allhistory; 
float [] distX;
float [] distY;
float step;
float mstep;
float speed;
float bx = 0;
float by = 0;
float cx;
float cy;
float ex;
int radius = 20;
int rankMin, rankMax;
int margin;
int xmargin;
int xspace;
int lin;
int dataR;
float xp, yp;
float xspeed;
float yspeed;
color a;
float y;
PFont title;
PFont font;
PFont date;
PFont rank;
int b=0;
// Create a session using your Temboo account application details
TembooSession session = new TembooSession("ningkf", "myFirstApp", "0cc184e40f5e4e3aa981cae26de0981f");

void setup() {
  size(1400, 800);

  margin = 220;
  xmargin = 100;
  step = 0.05;
  mstep = step;
  dataR = 20;
  //title
  title = loadFont("AppleGothic-40.vlw");
  font = loadFont("AbadiMT-CondensedLight-13.vlw");
  rank = loadFont("CapitalsRegular-100.vlw");
  date = loadFont("BanglaMN-Bold-14.vlw");
  // Run the GetBestSellerHistory Choreo function
  runGetBestSellerHistoryChoreo();
  getData();
  //set start status
  frameRate(30);
  bx = position[0].x;
  by = position[0].y;
}

void draw() {
  //set changing bg
  fill(a, 50);
  rect(0, 0, width, height);
  a = (255);
  path();
  header();
  bouncing();
  
}

//get motion path for ball
void path() {
  distX = new float [19];
  distY = new float [19];
  for (int i = 1; i<20; i++) {
    distX[i-1] = position[i].x - position[i-1].x;
    distY[i-1] = position[i].y - position[i-1].y;
  }
  //printArray(distX);
}

void balls(int a) {
  fill(0, 2);
  stroke(color(0));
  strokeWeight(5);
  ellipse(cx, cy, dataR, dataR);
  noStroke();
}

//display rank and date when hit points
void displaytext(int i) {
  textAlign(CENTER, BOTTOM);
  textFont(rank);
  text("#"+allhistory[i].rank, cx, cy-20);
  textAlign(CENTER, TOP);
  textFont(date);
  text(allhistory[i].date, cx, cy + 20);
}


