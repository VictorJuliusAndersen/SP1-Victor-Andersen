//Main
Zoog zoog;
Zoog goalkeeper;
Football football;
Scoreboard scoreboard;
Zoog[] zoogs = new Zoog[2]; // Array to hold 2 Zoog objects

//Text scoreboard
int value = 0;
boolean showText = false;
int timer = 0;
int displayTime = 2000; // Time in milliseconds

//Score
int zoogScore = 0;
int goalkeeperScore = 0;

void setup() {
  size(800, 800);

  //for loop to initialize all the elements in zoogs array
  for (int i = 0; i < zoogs.length; i++) {
    zoogs[i] = new Zoog(100 + i * 100, 200, 60, 100, 20);
  }
  //initializes the objects
  zoog = new Zoog(100, 200, 60, 100, 20);
  goalkeeper = new Zoog(100, 125, 60, 60, 16);
  football = new Football(40);
  scoreboard = new Scoreboard();
}
void draw() {
  background(149, 200, 215);
  ellipseMode(CENTER);
  rectMode(CENTER);

  //Field
  stroke(1);
  fill(0, 128, 0);
  rect(0, 800, 1600, 100);

  //Goal
  stroke(1);
  fill(255);
  rect(700, 650, 250, 200);

  //Displaying zoog, the football and scoreboard on the screen
  zoog.display();
  football.displayFootball();
  scoreboard.displayScoreboard();
  football.moveFootball();
}

void mousePressed() {
  //Starts the movement of the football and the counting on the scoreboard when mousePressed
  football.startMoving();
  scoreboard.startCounting();
}
