void main() {


  print(getSecondSmallest( [1,9,0,5,4,2]) );


}

//question 2 --> failed attempt
// int getSecondSmallest(List<int> list){
//   int min1 = list[0];
//   int min2 ;
//
//   for(int i=1;i<list.length;i++){
//     if (list[i] < min1){
//       min2 = min1;
//       min1 = list[i];
//     }
//     else if( (min2 == null || list[i]<min2) && list[i]>min1){
//       min2 = list[i];
//     }
//   }
//
//   return min2;
// }

//question 2 final //assuming no

int getMin(List<int> list){
  int min = list[0];

  for(int i=1;i<list.length;i++){
    if (list[i] < min){
      min = list[i];
    }
  }

  return min;
}

int getSecondSmallest(List<int> list){
  int min1 = getMin(list);
  list.remove(min1);
  int min2 = getMin(list);
  return min2;
}
