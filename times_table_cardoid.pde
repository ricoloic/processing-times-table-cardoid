int POINT_COUNT = 10_000;
int MULTIPLIER = 2;

int STROKE_ALPHA = 10;
int STROKE_WEIGHT = 1;

int FRAMERATE = 1;

float radius;

void setup() {
  size(600, 600);
  frameRate(FRAMERATE);

  radius = (min(width, height) - 30) / 2;
}

void draw() {
  background(33);
  translate(width / 2, height / 2);
  
  for (int i = 0; i < POINT_COUNT; i++) {
    float angle1 = map(i, 0, POINT_COUNT - 1, 0, TWO_PI);
    float x1 = cos(angle1) * radius;
    float y1 = sin(angle1) * radius;

    int j = (i * MULTIPLIER) % POINT_COUNT;
    float angle2 = map(j, 0, POINT_COUNT - 1, 0, TWO_PI);
    float x2 = cos(angle2) * radius;
    float y2 = sin(angle2) * radius;

    stroke(255, STROKE_ALPHA);
    strokeWeight(STROKE_WEIGHT);
    line(x1, y1, x2, y2);
  }
  
  MULTIPLIER++;
}
