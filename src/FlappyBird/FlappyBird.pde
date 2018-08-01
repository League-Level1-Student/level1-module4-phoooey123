void setup() {
  size(500, 500);
}
int Y = 150;
int X = 150;
double bv = 0;
double gravity = 0.5;
int pipeX = -100;
int pipeY = 0;
int gap = 175;
int topPipeHeight = (int) random(100, 200);
int bottomPipeHeight = 500 - (topPipeHeight + gap);
boolean pipehit = false;
boolean groundhit = false;
int score = 0;
void draw() {
  pipehit = intersectsPipes();
  if (pipehit == true) {
    exit();
  }

  groundhit = touchGround();
  if (groundhit == true) {
    exit();
  }
  background(0, 153, 238); 
  fill(255, 255, 0);
  stroke(0, 0, 0);
  ellipse(X, Y, 50, 50);
  fill(0, 136, 0);
  rect(pipeX, pipeY, 50, topPipeHeight);
  rect(pipeX, topPipeHeight+gap, 50, bottomPipeHeight);
  fill(0, 187, 34);
  rect(0, 450, 500, 50);
  Y+=bv;
  bv = bv + gravity;
  pipeX = pipeX - 4;
  fill(255, 0, 0);
  text(str(score), 50, 50);
  teleportPipes();
}
void teleportPipes() {
  
  if (pipeX < -50) {
    pipeX = 550;
    topPipeHeight = (int) random(100, 200);
    bottomPipeHeight = 500 - (topPipeHeight + gap);
  }
}
boolean intersectsPipes() { 
  print(bottomPipeHeight);
  println(topPipeHeight);
  if (X + 50 > pipeX && X < pipeX + 50 && Y +50 > pipeY) {
    return true;
  } else if (X + 50 > pipeX && X < pipeX + 50 && Y < pipeY + 50) {
    return true;
  } else { 
    return false;
  }
}
boolean touchGround() {
  if (Y>500) {
    return true;
  } else {
    return false;
  }
}

void mousePressed() {
  bv = 0;
  gravity = 0.5;
  Y -= 50;
}