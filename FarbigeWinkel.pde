int N = 300;   // Anzahl der Linien

void setup() {
  size(800, 600);
  background(255);
  noFill();
  zeichnen();
}

void draw() {
  // alles passiert in setup()
}

void zeichnen(){
  
  background(255);
  
  int N = int(random(3, 100));
  
  for (int i = 0; i < N; i++) {
    
    // Zufällige Start- und Endpunkte
    float x1 = random(width);
    float y1 = random(height);
    float x2 = x1 + random(-200, 200);
    float y2 = y1 + random(-200, 200);

    // Winkel der Linie (0–180°)
    float angle = degrees(abs(atan2(y2 - y1, x2 - x1)));
    
    strokeWeight(random(1, 6));

    // Farbwahl nach Winkelbereich
    if (angle >= 0 && angle < 70) {
      // Gelb/Orange
      stroke(random(200,255), random(150,200), 0);
    }
    else if (angle >= 70 && angle < 120) {
      // Rot/Violett
      stroke(random(150,255), 0, random(100,200));
    }
    else {
      // Blau
      stroke(0, random(100,180), random(200,255));
    }

    line(x1, y1, x2, y2);
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
