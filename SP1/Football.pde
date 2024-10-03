class Football {
  float ellipseX;
  float ellipseXSpeed;
  boolean isMoving;

  //Constructor for the Football class
  Football(float ellipseX) {
    this.ellipseX = ellipseX;
    this.ellipseXSpeed = 20; // Set the speed of the ball
    this.isMoving = false;
  }

  //Method to display the football
  void displayFootball() {
    ellipse(ellipseX, 740, 40, 40);
  }

  //Method to move the football
  void moveFootball() {
    if (isMoving && ellipseX < width) { // Using && to combine conditions
      ellipseX += ellipseXSpeed;
    }

    //Checks if the ball has gone out of bounds
    if (ellipseX >= width || ellipseX < 0) { // Using || to combine conditions
      ellipseX = 40; // Reset position to 40 when it hits the edge or goes negative
      isMoving = false; // Stop moving
    }
  }
  //Method to start the movement of the football
  void startMoving() {
    isMoving = true;
  }
}
