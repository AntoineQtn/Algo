void setup () {
  int [] board =new int [6];
  board[0]=7;
  board[1]=2;
  board[2]=9;
  board[3]=10;
  board[4]=1;
  board[5]=-4;
  println(board);
  getmax(board);
  getsum(board);
  getmean (board);
}

void getmax ( int[]c ) {
  int max = c[0];
  for ( int i = 0; i<c.length; i++) {
    if (c[i]>max) {
      max=c[i];
    }
  }
  println("affiche le max " +max);
}

float getsum ( int[]c) {
  int sum = 0;
  for ( int i = 0; i<c.length; i++) {
    sum = sum + c[i];
  }
  println("affiche la somme "+sum);
  return (sum);
}

void getmean ( int[]c) {
  float mean = 0;
  float sum = getsum(c);
  mean = sum/c.length;
  println("affiche la moyenne "+mean);
 
}
