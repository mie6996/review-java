package com.review_java.method_references;

@FunctionalInterface
interface ExecuteFunctional2 {
  int execute(int a, int b);
}

class MathUtils2 {
  public int add(int a, int b) {
    return a + b;
  }

  public int subtract(int a, int b) {
    return a - b;
  }
}

public class DemoMethodReference2 {
  public static int doAction(int a, int b, ExecuteFunctional2 func) {
    return func.execute(a, b);
  }

  public static void main(String[] args) {
    int a = 10;
    int b = 7;

    // Using method reference
    MathUtils2 obj = new MathUtils2();
    int sum2 = doAction(a, b, obj::add);
    System.out.println("Sum2: " + sum2);
    int subtract2 = doAction(a, b, obj::subtract);
    System.out.println("Subtract2: " + subtract2);

  }

}
