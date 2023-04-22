Star[] stars = new Star[10000];
int width = 1000;
int height = 1000;
float speed = 2;

void settings() {
    size(width, height);
}

void setup() {
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  background(0);
  translate(width/2, height/2);
  for(int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}
