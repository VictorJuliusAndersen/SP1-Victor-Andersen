class Zoog {

  // Zoog's variables
  int x, y, w, h, eyeSize;

  // Zoog constructor
  Zoog(int tempX, int tempY, int tempW, int tempH, int tempEyeSize) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    eyeSize = tempEyeSize;
  }

  // Display Zoog
  void display() {
    // Set ellipses and rects to CENTER mode
    ellipseMode(CENTER);
    rectMode(CENTER);

    // Zoog's arms with a for loop
    for (int i = mouseY - h/3; i < mouseY + h/2; i += 10) {
      stroke(0);
      line(mouseX-w/4, i, mouseX+w/4, i);
    }
    // Draw Zoog's body
    stroke(0);
    fill(0);
    rect(mouseX, mouseY, 20, 100);

    // Draw Zoog's head
    stroke(0);
    fill(226, 168, 152);
    ellipse(mouseX, mouseY-30, 60, 60);

    // Draw Zoog's eyes
    fill(0);
    ellipse(mouseX-12, mouseY-30, 12, 12);
    ellipse(mouseX+12, mouseY-30, 12, 12);

    fill(255);
    ellipse(mouseX-12, mouseY-30, 5, 6);
    ellipse(mouseX+12, mouseY-30, 5, 6);

    //Zoog's nose
    strokeWeight(0);
    stroke(mouseX+0, mouseY-50, pmouseX-10, pmouseY+60);

    //Zoog's mouth
    fill(220, 20, 20);
    ellipse(mouseX+0, mouseY-10, 35, 12);
    // Draw Zoog's legs
    strokeWeight(2);
    stroke(0);
    line(mouseX-10, mouseY+50, pmouseX-10, pmouseY+60);
    line(mouseX+10, mouseY+50, pmouseX+10, pmouseY+60);

    //Goalkeeper's body
    stroke(2);
    fill(255, 0, 0);
    rect(675, 700, 20, 70);

    //Goalkeeper's head
    stroke(1);
    fill(240, 168, 152);
    ellipse(675, 650, 60, 60);

    //Goalkeeper's eyes
    fill(0);
    ellipse(660, 650, 12, 12);
    ellipse(690, 650, 12, 12);

    //Goalkeeper's mouth
    fill(255);
    ellipse(675, 670, 35, 12);

    //Goalkeeper's legs
    line(685, 735, 690, 755);
    line(660, 755, 665, 735);
  }
}
