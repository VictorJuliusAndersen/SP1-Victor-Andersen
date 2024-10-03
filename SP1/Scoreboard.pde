class Scoreboard {

  //Method to display the scoreboard
  void displayScoreboard() {

    //Goal Text
    if (showText) {
      fill(0);
      textSize(59);
      text("GOOOOOOAAAAAAAAAAL", 100, 200);
      if (millis() - timer > displayTime) {
        showText = false;
      }
    }

    //Display Zoog & Goalkeeper score
    textSize(50);
    text("Zoog "+zoogScore, 50, 50);
    text("Goalkeeper "+goalkeeperScore, 250, 50);
  }


  //Method to start counting goals
  void startCounting() {
    //Goal Text
    showText = true;
    timer = millis();

    //Goal score + 1 when mousePressed
    text("Zoog "+zoogScore++, 50, 50);
  }
}
