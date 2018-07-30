void setup() {
size(500, 500);

}
int Y = 150;
int X = 150;
int bv = 1;
int gravity = 1;
int pipeX = 550;
int topPipeHeight = (int) random(100, 200);
int bottomPipeHeight = (int) random(300, 500);
void draw() {
 background(0, 153, 238); fill(255,255,0);
 stroke(0,0,0);
 ellipse(X, Y, 50, 50);
 fill(0,136,0);
 rect(pipeX, 0, 50, topPipeHeight);
 rect(pipeX, 400, 50, bottomPipeHeight);
 Y = Y + bv;
 bv = bv + gravity;
 pipeX = pipeX - 4;
 teleportPipes();
 
    
  }
  void teleportPipes() {
    if(pipeX == -50) {
    pipeX = 550;
    topPipeHeight = (int) random(100, 200);
    bottomPipeHeight = (int) random(300, 500);
    }
}

void mousePressed() {
  bv = 1;
  gravity = 1;
  Y -= 150;
  
}