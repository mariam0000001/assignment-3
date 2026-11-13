void main() {


   CountGeneral([1,2,3,1,3,6]);


}

//question 9
int countOcc(List<int> list , key){
  int count = 0;
  for(int i = 0; i<list.length ;i++){
    if(list[i] == key){
      count++;
    }
  }
  return count;
}

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

void CountGeneral(List<int> list){
  List<int> numbers = [];
  for(int i = 0; i<list.length ;i++){
    if(!containValue(numbers,list[i])){
      int count = countOcc(list , list[i]);
      int item = list[i];
      print("$item --> $count");
      numbers.add(list[i]);
    }

  }
}
