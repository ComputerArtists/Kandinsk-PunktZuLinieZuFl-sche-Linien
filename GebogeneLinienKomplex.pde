int STEPS = 150; // Wie fein die Kurven segmentiert werden

void setup() {
  size(900, 600);
  background(255);
  noFill();
  zeichnen();  
}

void draw() {
  // alles passiert in setup()
}

void zeichnen(){
  
  background(255);
  
  int N = int(random(3, 36));
  
  for (int k = 0; k < N; k++) {
    
    // -------------------------------
    // Zufällige Start/End/Kontrollpunkte
    // -------------------------------
    float x1 = random(width);
    float y1 = random(height);
    float x2 = x1 + random(-250, 250);
    float y2 = y1 + random(-250, 250);

    float cx1 = x1 + random(-200, 200);
    float cy1 = y1 + random(-200, 200);
    float cx2 = x2 + random(-200, 200);
    float cy2 = y2 + random(-200, 200);

    float px = x1; // Vorheriger Punkt
    float py = y1;

    // -------------------------------
    // Kurve in kleine Stücke geschnitten
    // -------------------------------
    for (int i = 1; i <= STEPS; i++) {

      float t = i / float(STEPS);

      // Bezier-Punkt berechnen
      float x = bezierPoint(x1, cx1, cx2, x2, t);
      float y = bezierPoint(y1, cy1, cy2, y2, t);

      // Tangentenrichtung bestimmen
      float dx = x - px;
      float dy = y - py;

      float angle = degrees(abs(atan2(dy, dx))); // lokale Orientierung

      // -------------------------------
      // Farblogik nach Winkel
      // -------------------------------
      if (angle < 70) {
        stroke(random(220,255), random(150,200), 0, 220); // gelb/orange
      } 
      else if (angle < 120) {
        stroke(random(180,255), 0, random(100,200), 220); // rot/violett
      } 
      else {
        stroke(0, random(80,160), random(180,255), 220);   // blau
      }

      strokeWeight(3);
      line(px, py, x, y);

      // Update für nächstes Segment
      px = x;
      py = y;
    }
  }
}

void keyPressed() {
  if (key == 'n') {
    zeichnen();
  }
  if (key == 's' || key == 'S') {
    saveFrame("Verlaufds-Gebogene-####.png");
    println("Gespeichert!");
  }
}
