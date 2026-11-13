void main() {


 print(CalculateEven([1,4,2,5,-1,8]));


}

//question 4
int CalculateEven(List<int> list){
  int sum = 0;
  for(int i=0;i<list.length;i++){
    if(list[i]%2== 0){
      sum+=list[i];
    }
  }
  return sum;
}
