void setup() {
  size(600, 400);
  background(255);
  zeichnen();
}

void draw() {
  // Kein kontinuierliches Zeichnen notwendig
}

void zeichnen(){
  
  background(255);
   
  int N = int(random(3, 100));
 
  for (int i = 0; i < N; i++) {

    float dicke = random(1, 6);
    strokeWeight(dicke);
    stroke(0);
    noFill();

    // Entscheidung: Horizontal gekrümmt oder diagonal gekrümmt?
    if (random(1) < 0.5) {
      // --- Horizontale gebogene Linie ---
      float y = random(height);
      float x1 = random(width);
      float x2 = x1 + random(50, 300);

      // Kontrollpunkte erzeugen leichte oder stärkere Krümmung
      float cx1 = x1 + random(-50, 50);
      float cy1 = y + random(-50, 50);

      float cx2 = x2 + random(-50, 50);
      float cy2 = y + random(-50, 50);

      bezier(x1, y, cx1, cy1, cx2, cy2, x2, y);

    } else {
      // --- Diagonale gebogene Linie ---
      float x1 = random(width);
      float y1 = random(height);
      float x2 = x1 + random(-200, 200);
      float y2 = y1 + random(-200, 200);

      // Frei fließende Kurven
      float cx1 = x1 + random(-100, 100);
      float cy1 = y1 + random(-100, 100);

      float cx2 = x2 + random(-100, 100);
      float cy2 = y2 + random(-100, 100);

      bezier(x1, y1, cx1, cy1, cx2, cy2, x2, y2);
    }
  }
}
void keyPressed() {
  if (key == 'n') {
    zeichnen();
  }
  if (key == 's' || key == 'S') {
    saveFrame("muster-kreise-####.png");
    println("Gespeichert!");
  }
}
