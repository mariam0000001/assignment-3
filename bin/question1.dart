void main() {

  print(getMin([5,8,4,2,6]));

}

//question 1
int getMin(List<int> list){
  int min = list[0];

  for(int i=1;i<list.length;i++){
    if (list[i] < min){
      min = list[i];
    }
  }

  return min;
}
