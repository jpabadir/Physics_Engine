Ball ball;

void setup() {
  size(600, 600);
  //frameRate(10);
  ball = new Ball();
}

void draw() {
  background(255);
  ball.display();
  ball.move();
}
