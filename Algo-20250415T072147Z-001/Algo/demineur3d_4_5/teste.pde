//int cols = 10;
//int rows = 10;
//int cellSize = 40;

//int[][] tabl = new int[cols][rows];
//boolean[][] revealed = new boolean[cols][rows];

//void setup() {
//  size(cols * cellSize, rows * cellSize);
//  initboard(cols, rows, 10);
//}

//void draw() {
//  background(255);
//  drawTabl();
//}

//void initboard(int w, int h, int mine) {
//  int x = 0;
//  while (x < mine) {
//    int pos_minei = int(random(w));
//    int pos_minej = int(random(h));
//    if (tabl[pos_minei][pos_minej] != 99) {
//      tabl[pos_minei][pos_minej] = 99;
//      x++;
//    }
//  }

//  // Remplit les cases avec le nombre de mines autour
//  for (int i = 0; i < w; i++) {
//    for (int j = 0; j < h; j++) {
//      if (tabl[i][j] != 99) {
//        tabl[i][j] = getMines(i, j);
//      }
//    }
//  }
//}

//int getMines(int i, int j) {
//  int count = 0;
//  for (int di = -1; di <= 1; di++) {
//    for (int dj = -1; dj <= 1; dj++) {
//      if (di == 0 && dj == 0) continue;
//      int ni = i + di;
//      int nj = j + dj;
//      if (ni >= 0 && ni < cols && nj >= 0 && nj < rows) {
//        if (tabl[ni][nj] == 99) {
//          count++;
//        }
//      }
//    }
//  }
//  return count;
//}

//void mousePressed() {
//  int i = mouseX / cellSize;
//  int j = mouseY / cellSize;
//  if (i >= 0 && i < cols && j >= 0 && j < rows) {
//    revealed[i][j] = true;

//    if (tabl[i][j] == 99) {
//      println("BOOM 💥");
//    }
//  }
//}

//void drawTabl() {
//  for (int i = 0; i < cols; i++) {
//    for (int j = 0; j < rows; j++) {
//      int x = i * cellSize;
//      int y = j * cellSize;

//      stroke(0);
//      if (revealed[i][j]) {
//        fill(180);
//        rect(x, y, cellSize, cellSize);

//        if (tabl[i][j] == 99) {
//          fill(255, 0, 0);
//          ellipse(x + cellSize / 2, y + cellSize / 2, 10, 10);
//        } else {
//          fill(0);
//          textAlign(CENTER, CENTER);
//          text(tabl[i][j], x + cellSize / 2, y + cellSize / 2);
//        }
//      } else {
//        fill(100);
//        rect(x, y, cellSize, cellSize);
//      }
//    }
//  }
//}
