void main() {


  assignGrades([40,55,70,58]);


}

//question 5
int getMax(List<int> list){
  int max = list[0];

  for(int i=1;i<list.length;i++){
    if (list[i] > max){
      max = list[i];
    }
  }

  return max;
}
void assignGrades(List<int> list){
  int bestS = getMax(list);

  for(int i=1;i<list.length+1;i++){
    int curr = list[i-1];
    if(curr >= bestS - 10){
      print("student $i score is $curr and grade is A");
    }
    else if(curr >= bestS - 20){
      print("student $i score is $curr and grade is B");
    }
    else if(curr >= bestS - 30){
      print("student $i score is $curr and grade is C");
    }
    else if(curr >= bestS - 40){
      print("student $i score is $curr and grade is D");
    }
  }

}