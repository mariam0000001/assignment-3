
void main() {


  containsValue([8,0,1,5] , 4);

}

//question 3
void containsValue(List<int> list , int key){
  String isFound = "no";
  for(int i=0;i<list.length;i++){
    if(list[i] == key){
      isFound="yes";
      break;
    }
  }
  print(isFound);
}