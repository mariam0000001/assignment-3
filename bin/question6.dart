void main() {

analyzeScores([8,5,1,3]);


}

//question 6
void  analyzeScores(List<int> list){
  int sum = 0;
  for(int i=0;i<list.length;i++){
    sum+=list[i];
  }
  int avg = sum~/list.length;
  int above = 0;
  int below = 0;
  int equal = 0;
  for(int i=0;i<list.length;i++){
    if(list[i] > avg){
      above++;
    }
    else if(list[i]<avg){
      below++;
    }
    else{
      equal++;
    }
  }
  print("above average $above");
  print("below average $below");
  print("equal average $equal");

}
