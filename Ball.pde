class Ball {
  int x;
  int y;
  float radius;
  PVector velocity;

  Ball() {
    x = width / 2;
    y = height / 2;
    radius = 15;
    velocity = new PVector(5, 5);
  }

  void display() {
    fill(255, 0, 0);
    ellipse(x, y, radius * 2, radius * 2);
  }

  void move() {
    // bounce
    if (x + radius >= width || x - radius <= 0 || y + radius >= height || y - radius <= 0) {
      velocity.rotate(PI);
    }
    
    // move
    x += velocity.x;
    y += velocity.y;
  }
}
