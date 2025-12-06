void setup() {
  size(600, 400);
  background(255);
  zeichnen();
}

void draw() {
  // Leer – alles passiert in setup()
}

void zeichnen()
{
  int N = int(random(3, 36));

  for (int i = 0; i < N; i++) {

    float dicke = random(1, 10);
    strokeWeight(dicke);
    stroke(0);

    // Entscheidung: Horizontal oder Diagonal?
    if (random(1) < 0.5) {
      // --- Horizontale Linie ---
      float y = random(height);
      float x1 = random(width);
      float länge = random(20, 300);
      float x2 = x1 + länge;

      line(x1, y, x2, y);

    } else {
      // --- Diagonale Linie ---
      float x1 = random(width);
      float y1 = random(height);

      // zufällige Richtung für die Diagonale
      float x2 = x1 + random(-200, 200);
      float y2 = y1 + random(-200, 200);

      line(x1, y1, x2, y2);
    }
  }
}

void keyPressed() {
  if (key == 'n') {
    background(255);
    zeichnen();
  }
  if (key == 's' || key == 'S') {
    saveFrame("kreuzende-Linien-####.png");
    println("Gespeichert!");
  }
}
