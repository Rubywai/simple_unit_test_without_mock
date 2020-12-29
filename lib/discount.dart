num eachPrice(int item,int price){
  //20 % discount for >= 5 item
  if(item >= 5 && item<10){
    return price * 0.8;
  }
  // 30 % discount for >= 10 items
  else if(item >= 10){
    return price * 0.7;
  }
  return price;
}
num totalPrice(int item,num eachPrice){
  return item * eachPrice;
}