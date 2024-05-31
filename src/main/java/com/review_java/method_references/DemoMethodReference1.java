package com.review_java.method_references;

@FunctionalInterface
interface ExecuteFunctional {
  int execute(int a, int b);
}

class MathUtils {
  public static int add(int a, int b) {
    return a + b;
  }

  public static int subtract(int a, int b) {
    return a - b;
  }
}

public class DemoMethodReference1 {
  public static int doAction(int a, int b, ExecuteFunctional executeFunctional) {
    return executeFunctional.execute(a, b);
  }

  public static void main(String[] args) {
    int a = 10;
    int b = 7;

    // Using lambda expression
    int sum = doAction(a, b, (x, y) -> MathUtils.add(x, y));
    System.out.println("Sum: " + sum);
    int subtract = doAction(a, b, (x, y) -> MathUtils.subtract(x, y));
    System.out.println("Subtract: " + subtract);

    // Using method reference
    int sum2 = doAction(a, b, MathUtils::add);
    System.out.println("Sum2: " + sum2);
    int subtract2 = doAction(a, b, MathUtils::subtract);
    System.out.println("Subtract2: " + subtract2);

  }

}
