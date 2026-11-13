
void main() {

 getDistinctNumbers([1,2,3,2,1,3,4,5,2,6]);


}

//question 8
bool containValue(List<int> list , int key){
  bool isFound = false;
  for(int i=0;i<list.length;i++){
    if(list[i] == key){
      isFound=true;
      break;
    }
  }
  return isFound;
}

void getDistinctNumbers(List<int> list){
  List<int> distinct = [];
  for(int i = 0; i<list.length ;i++){
    if(!containValue(distinct, list[i] )){
      distinct.add(list[i]);
    }
  }
  int count = distinct.length;
  print("The number of distinct number is $count");
  print("the ditinct numbers are: $distinct");

}
