// Anzahl der Linien

void setup() {
  size(600, 400);
  background(255);
  noLoop();
  
}

void draw() {
  // kein kontinuierliches Zeichnen nötig
  int N = int(random(3, 36));

  for (int i = 0; i < N; i++) {
    float y = random(height);         // Zufällige Y-Position
    float x1 = random(width);         // Startpunkt
    float länge = random(20, 300);    // Zufällige Länge
    float x2 = x1 + länge;            // Endpunkt
    float dicke = random(1, 10);      // Zufällige Dicke

    strokeWeight(dicke);
    stroke(0);
    line(x1, y, x2, y);
  }
}

void keyPressed() {
  if (key == ' ') {
    background(255);
    draw();
  }
  if (key == 's' || key == 'S') {
    saveFrame("horizontale-Linien-####.png");
    println("Gespeichert!");
  }
}
