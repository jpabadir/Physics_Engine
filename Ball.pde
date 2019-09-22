class Ball {
  float x;
  float y;
  float radius;
  PVector velocity;
  PVector acceleration;

  Ball() {
    x = width / 2;
    y = height - 100;
    radius = 15;
    velocity = new PVector(0, 10);
    acceleration = new PVector(0, 0);
  }

  void display() {
    fill(255, 0, 0);
    ellipse(x, y, radius * 2, radius * 2);
    // display velocity
    line(x, y, x + velocity.x * 10, y + velocity.y * 10);
  }

  void move() {
    if (x + radius >= width || x - radius <= 0 || y + radius >= height || y - radius <= 400) {
      bounce();
    }

    // move
    float distanceToEdge = dist(x, (y + radius), width/2, height);
    println(distanceToEdge);
    if (distanceToEdge >= abs(velocity.y)) {
      y += velocity.y;   
      velocity.add(acceleration);
    } else {
      if (distanceToEdge == 0) {
        y += velocity.y;
      } else {
        y += distanceToEdge;
      }

      //velocity.add(acceleration.mult(distanceToEdge / velocity.y));
    }
  }

  void bounce() {
    velocity.rotate(PI);
  }
}
