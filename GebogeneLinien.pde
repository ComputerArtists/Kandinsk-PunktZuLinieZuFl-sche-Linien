int N = 120;    // Anzahl der Kurven

void setup() {
  size(800, 600);
  background(255);
  noFill();
 zeichnen();
}

void draw() {
  // Alles erfolgt in setup()
}

void zeichnen(){
 
  background(255);
  
  int N = int(random(3, 36));
  
  for (int i = 0; i < N; i++) {

    // --- Zufällige Start- & Endpunkte ---
    float x1 = random(width);
    float y1 = random(height);
    float x2 = x1 + random(-250, 250);
    float y2 = y1 + random(-250, 250);

    // --- Zufällige Kontrollpunkte für schöne Krümmung ---
    float cx1 = x1 + random(-150, 150);
    float cy1 = y1 + random(-150, 150);
    float cx2 = x2 + random(-150, 150);
    float cy2 = y2 + random(-150, 150);

    // --- Winkel der Kurve über Start->Ende bestimmt ---
    float angle = degrees(abs(atan2(y2 - y1, x2 - x1))); // 0–180°

    strokeWeight(random(2, 6));

    // Farbregelung: 0–70°, 70–120°, 120–180°
    if (angle < 70) {
      // Gelb/Orange
      stroke(random(220,255), random(150,200), 0, 220);
    } 
    else if (angle < 120) {
      // Rot/Violett
      stroke(random(190,255), 0, random(80,200), 220);
    } 
    else {
      // Blau
      stroke(0, random(80,160), random(180,255), 220);
    }

    bezier(x1, y1, cx1, cy1, cx2, cy2, x2, y2);
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
