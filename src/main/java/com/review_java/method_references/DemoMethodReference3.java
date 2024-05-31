package com.review_java.method_references;

import java.util.Arrays;

public class DemoMethodReference3 {
  public static void main(String[] args) {
    String[] names = {"John", "Alex", "Alice", "Bob", "David"};
    // Using lambda expression
    System.out.println("Using lambda expression");
    Arrays.stream(names).sorted((s1, s2) -> s1.compareToIgnoreCase(s2)).forEach(System.out::println);

    // Using method reference
    System.out.println("\nUsing method reference");
    Arrays.stream(names).sorted(String::compareToIgnoreCase).forEach(System.out::println);

  }

}
