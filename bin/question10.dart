void main() {


  print(SelectionSort([1,0,3,6,2,5]));

}

//question 10
List<int> SelectionSort(List<int> list){

  for(int i = 0; i<list.length-1 ;i++){
    int min = list[i];
    for(int j = i+1;j<list.length;j++){
      if(list[j]<min){
        min = list[j];
      }
    }
    list.remove(min);
    list.insert(i, min);
  }
  return list;
}