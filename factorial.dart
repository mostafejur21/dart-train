int fact(int n){
    int factorial = 1;
    for (int i =2; i <=n; i++)
    {
        factorial*=i;

    }
    return factorial;
}

void main() {
  print(fact(5));
}
