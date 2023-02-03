public void setup() {
  size(800, 800);
  background(0);
}

public void draw() {
    if (keyCode == UP) {
    background(0);
    for (int i = -400; i < 900; i+=400) {
      for (int y = -400; y < 900; y+=400) {
        sierpinski(i, y, 400);
      }
    }
  }
  if (keyCode == RIGHT) {
    background(0);
    for (int i = -200; i < 800; i+=200) {
      for (int y = -200; y < 800; y+=200) {
        sierpinski(i, y, 200);
      }
    }
  }
  if (keyCode == LEFT) {
    background(0);
    for (int i = -200; i < 800; i+=100) {
      for (int y = -200; y < 800; y+=100) {
        sierpinski(i, y, 200);
      }
    }
  }
  if (keyCode == DOWN) {
    background(0);
    for (int i = -200; i < 800; i+=50) {
      for (int y = -200; y < 800; y+=50) {
        sierpinski(i, y, 200);
      }
    }
  }
}

public void sierpinski(int x, int y, int len) {
  if (len <= 20) {
    triangle(x, y, x+(len/2), y+len, x+len, y);
  } else {
    fill(255, y+30, x+10);
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y + len/2, len/2);
  }
}
