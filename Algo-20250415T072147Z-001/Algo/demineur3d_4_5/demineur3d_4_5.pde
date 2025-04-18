int tabl [][] = new int [10][10];
int x = 0;
int y = 0;

int cols = 10;
int rows = 10;
int cellSize = 40;

void settings () {
size(cols*cellSize, rows*cellSize);}
void setup() {
  initboard(10, 10, 10);
  getMines(0, 0);
  //affichage ();
}

void draw() {
  background(255);

  drawTabl();
}

void initboard(int i, int j, int mine) {

  while ( x<mine) {
    int pos_minei = int(random(tabl.length));
    int pos_minej = int(random(tabl[0].length));
    if (tabl[pos_minei][pos_minej]!=99) {
      tabl[pos_minei][pos_minej]=99;
      x++;
    }
  }

  for ( i = 0; i < tabl.length; i++) {
    for ( j = 0; j < tabl.length; j++) {
      print(tabl[i][j] + "\t");
    }
    println();
  }
}
boolean isAMine ( int i, int j ) {
  int pos_minei = int(i);
  int pos_minej = int (j);
  if (tabl[pos_minei][pos_minej]==99) {
    return true;
  } else {
    return false;
  }
}
int getMines(int i, int j) {
  int nombresdemines = 0;
  for (int di = -1; di <= 1; di++) {
    for (int dj = -1; dj <= 1; dj++) {
      if (di == 0 && dj == 0) {
        continue;
      }
      if ( i+di >= 0 && i+di<tabl.length && j+dj>=0 && j+dj <tabl[i].length ) {
        if (isAMine(i + di, j + dj)) {
          nombresdemines++;
        }
      }
    }
  }
  return nombresdemines;
}
//void affichage () {
//  for ( int i = 0; i < tabl.length; i++) {
//    for ( int j = 0; j < tabl.length; j++) {
//      if (tabl[i][j]==99) {
//        print("X");
//      } else {
//        print(getMines(i, j));
//      }
//    }
//    println();
//  }
//}

boolean[][] revealed = new boolean[cols][rows];

void mousePressed () {

  int i = mouseX / cellSize;
  int j = mouseY / cellSize;
  if (i >= 0 && i < cols && j >= 0 && j < rows) {
    revealed[i][j] = true;

    if (tabl[i][j] == 99) {
      println("BOOM");
    }
  }
}



void drawTabl() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int x = i * cellSize;
      int y = j * cellSize;

      stroke(0);
      if (revealed[i][j]) {
        fill(180);
        rect(x, y, cellSize, cellSize);


        if (tabl[i][j] == 99) {
          fill(255, 0, 0);
          ellipse(x + cellSize / 2, y + cellSize / 2, 10, 10);
        } else {
          fill(0);
          textAlign(CENTER, CENTER);
          text(tabl[i][j], x + cellSize / 2, y + cellSize / 2);
        }
      } else {
        fill(100);
        rect(x, y, cellSize, cellSize);
      }
    }
  }
}
